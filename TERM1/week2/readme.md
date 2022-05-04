# Week 1 Recap

## Terminal Commands

- md (markdown)
- ls (list all files in the directory)
- ls -la (list hidden files)
- pwd (print the current directory)
- rm filename.ext (remove the directory)
- mkdir (make a directory)

## HTML & CSS

- Hyper Text Markup Language
- Cascading Style Sheets
- Semantic elements: header, footer, section, article

## Adding an Image into Markdown
![Burger](images/image1.jpg)

## Writing Code in Markdown
```html
<!DOCTYPE html>
<html>
<head>
	<title>Marquee Tag</title>
	<style>
        body{
            background-color: #292929;
            background-image: url("images/stars.png");
            color: #facf5a;
            font-family: Arial;
            line-height: 1.7em;
            font-size: 1.3em;
        }
	.marq {        
        text-align:center;
        padding: 5% 25% 5% 25%;
	}

	</style>
</head>

<body>
	<div class = "main">
	<marquee class="marq" direction="up" scrollamount="1.5">
		<h1>Episode I</h1>
        <h2>THE PHANTOM MENACE</h2>
		<p>Turmoil has engulfed the
            Galactic Republic. The taxation
            of trade routes to outlying star
            systems is in dispute.

            Hoping to resolve the matter
            with a blockade of deadly
            battleships, the greedy Trade
            Federation has stopped all
            shipping to the small planet
            of Naboo.

            While the Congress of the
            Republic endlessly debates
            this alarming chain of events,
            the Supreme Chancellor has
            secretly dispatched two Jedi
            Knights, the guardians of
            peace and justice in the
            galaxy, to settle the conflict....
            </p>
	</marquee>
	</div>
</body>
</html>
```