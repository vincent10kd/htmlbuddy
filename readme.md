htmlbuddy
================
<vincent10kd@gmail.com>
2024-10-23

The **htmlbuddy** package makes it supremely easy to quickly build .html pages, without necessitating knowledge of html or even markdown. The functions seamlessly integrate with normal R code, allowing one to use **htmlbuddy** as part of a normal workflow. 

## Example htmlbuddy syntax

Building a page is trivially easy with **htmlbuddy**. One can start creating a page by using the `page()` function, in which different page elements can be integrated, such as tables (with the `tab()` function), images (`image()`), text (`text`()), links, and so on. The elements are separated by commas. The below is a short example. 

``` r
p1 <- page(
           title("This is the title"),
           text("Let's start off with some introductory text. Then a table:"),
           tab(head(iris)),
           text("That was easy!")
)
```

An alternative way to build pages is by using the `+` operator:

``` r
p1 <- title("This is the title") +
      text("Let's start off with some introductory text. Then a table:") +
      tab(head(iris)) +
      text("That was easy!")
```
Both result in the same output. The `+` operator can also be used on pages themselves, not only on their elements (which are of class `pageObject`). Once the page is composed, it can be written to a file by using the `render()` function:

``` r
render(p1, filename = 'example_page.html')
```

With the `render` function, several pages can be rendered at once. To do so, enter arbitrarily many pages as arguments, separated by commas. Important when entering several pages is that you pass a character vector of equal length as there are pages to the `filename` argument. By default, a custom css style sheet is used in **htmlbuddy**, but this is customizable. If you want to use your own css sheet, this is passable to the `render()` function by using the `css` argument. This applies the same style sheet to all pages rendered at the same time. 

## Integrating images

Incorporating figures is also easy in **htmlbuddy**. One can link to an existing image by using the `image()` function. If you want to plot something and directly save it for use inside the html page, the `capture()` function can be used for this:

``` r
capture(plot(hist(rnorm(1e6))), 'histo')
p2 <- title('This is the title for the plot') + image('histo') + text('What a nice figure..')
render(p2, filename = 'example_page2.html')
```

## Batch operations

If you want to pass a list of objects to be converted to html at once, e.g. a list of 100 data.frames, this is possible by using the `batch()` function. It allows one to batch execute a function on all elements of a list, like so:

``` r
# make a list of 5 tables
tab_list <- list(head(iris), tail(iris), head(iris), tail(iris), head(iris))

# batch convert to html and integrate in page
p3 <- title("Title for page 3") + batch(tab_list, tab)
render(p3, filename = 'example_page3.html')
```

## Code and math

It is also possible to display code chunks or mathematical equations (using mathjax) in **htmlbuddy**. The corresponding functions are `code()` and `math()`. Example usage is as follows:

``` r
p4 <- code('print("hello world")') +
      math('$$ {J(\\theta) =\\frac{1}{2m} [\\sum^m_{i=1}(h_\\theta(x^{(i)}) - y^{(i)})2 + \\lambda\\sum^n_{j=1}\\theta^2_j} $$')

render(p4, filename = 'example_page4.html')
```

Note that for the `mathjax` syntax one needs to escape special characters for it to display correctly. 

 
That's all there is to it! Happy html'ing.. In case of further suggestions, feel free to get in touch.

