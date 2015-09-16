# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create({
  title: 'Bitvestr',
  url: 'http://www.bitvestr.com',
  repo: 'https://github.com/michaelfich/bitvestr',
  featured: true,
  description:
    'Over the final two weeks at Bitmaker Labs, I worked with Lucas Zarnett to
     create Bitvestr.  Bitvestr is a web app to help people develop a trading
     strategy for buying and selling Bitcoin.',
})

Project.create({
  title: 'Tic Tac Toe',
  url: 'http://tictactoe.michaelfich.com',
  repo: 'https://github.com/michaelfich/tictactoe',
  featured: true,
  description:
    'Using the upcoming Batman vs. Superman: Dawn of Justice movie as inpiration
     for my theme, I completed this Bitmaker Labs javascript fundamentals assignment
     with a bit of my own personal style added to it.',
})

Project.create({
  title: 'Rainforest',
  url: 'https://rainforest.michaelfich.com',
  repo: 'https://github.com/michaelfich/rainforest',
  featured: true,
  description:
    'Rainforest is a Bitmaker Labs assignment which uses Amazon\'s website as inspiration
     and helps practice both Rails and Javascript fundamentals learned such as associations
     between different Rails models and pagination, as well as using AJAX to add
     features such as a search option to filter products, infinite scroll, and posting
     reviews.',
})

Blog.create({
  title: "My Path to Bitmaker Labs",
  user: User.first,
  published_at: Time.new(2015, 6, 17),
  body: "A couple of months ago, in April, I had just finished celebrating my 31st birthday. Like many people who set goals for themselves, either on a birthday, New Years or other milestones on the calendar, I too took a look at where I wanted to be when my next birthday comes around.

    However, this was a pretty familiar pattern, and I had remembered doing the same the previous year as well. I looked back at how much things had really changed from age 30 to 31. I was great at setting goals, I just hadn't followed through to make them really happen.

    I listed five major aspects of my life that I wanted to really improve, and prioritized my career as the first on the list.

    I was in the same job as the previous year, and although I felt that I had improved at it, I didn't see it being distinctly different over the previous year. I was working in customer service for Tucows Inc, a domain registrar based in Canada. I had learned a lot while working there and really valued that knowledge, but I felt that I could, and should, be doing more.

    Years earlier, I had taken Computer Science at Sheridan College after graduating from High School. I also took some courses at Ryerson University for web development (PHP and ASP.NET). It's been a hobby to try to code, but I hadn't turned it into a career as I had wanted to in the past.

    On the advice of one of my instructors at Ryerson a few years earlier, I looked into learning Ruby on Rails. At the time, he had explained to me that it was a relatively new web framework which was really interesting, and was going to be the next big thing. Since that time, it had grown significantly in popularity and was now very well established.

    For a couple of months, I had looked up several articles and tutorials online, including many helpful video's on YouTube. I also tried developing my own Rails app, a clone of Twitter, to get some practice. I managed to build some of the more basic functionality, but found it difficult to progress much further and I didn't believe that my development skills were at a professional level. It also felt that my progress was slow moving.

    I had searched on Google for resources to learn Ruby on Rails more broadly then looking up a specific piece of code or what a single file in Rails does. I really wanted to find a something that would help me to learn Rails but wouldn't stop at just getting a basic app up, but continue to teach integration with API's, implementing Javascript in the app, and also understanding Ruby.

    On one of my many Google search results, I found the website for Bitmaker Labs! It's a coding bootcamp located in downtown Toronto, and their full time course in Web Development is primarily training to use Ruby on Rails and Javascript! That's exactly what I was looking for, though I was left with a tough decision.

    I wouldn't be able to stay in my current full time job, and take the 9-week course at Bitmaker Labs at the same time. The web development course is 40 hours a week, and from what I had read, that was just a starting point. Others who had gone to developer bootcamps had mentioned that often this goes up to 60-80 hours a week to get the most out of it and grow your skills as much as possible.

    I had to consider the income of my current job as opposed to the tuition fee at Bitmaker Labs which would require a significant. However, the more I thought about it, the financial elements became far less of a factor.

    Bitmaker Labs offered an opportunity to do something I am really passionate about, and learn in an environment which is really fun and exciting! Alumni whom had posted online about their experiences, both in their blogs or on social media sources like Twitter and Reddit, had spoken very highly about both the course and their career path that followed afterwards.

    I called Bitmaker Labs and spoke with Erik Dohnberg, the lead admissions officer. He offered to give me a tour and talk to see if this was a good fit for me. I took him up on the offer and we spoke for over an hour.

    I had went into our conversation already really enthusiastic, but my excitement only grew from there. I signed up that day and also told my manager at work that I was leaving that day as well.

    I'm currently half-way through the second week of the course, and feel validated that it was the right choice for me. I'd highly encourage anyone to check them out, if they find themselves in a similar situation. I'll post more about my first couple of weeks soon, and updates going forward as well.

    If you want to keep in touch, you can find me on Twitter at @michael_fich or by email at michaeltf@gmail.com as well.

    Thanks for reading! :)"
})

Blog.create({
  title: "Update: Two weeks in at Bitmaker Labs!",
  user: User.first,
  published_at: Time.new(2015, 6, 19),
  body: "It's Friday, and I just finished my assignment for the second week at Bitmaker Labs. It's a CRM application to allow a user to store their contacts in a database, with CRUD operations (Create, Read, Update and Delete).

    We started the first week with the introductions before moving into our first lesson of the course. Each group of five had five minutes to come up with their own unique way of introducing themselves to the rest of the people in the cohort. My group decided each person would rap about another person in the group to introduce them. I walked up without knowing what I was going to say, but luckily managed to rhyme a couple of introductory sentences together.

    Later in the day, we had our first lesson! It was a review of the fundamentals of operating in the Terminal within a Unix based operating system, and also using git to apply version control to our projects, and upload them to a Github.com repository.

    Like the other lessons that would come in our first week, it was a review of the material we had been provided for our prep work prior to beginning the course, but it really helped to discuss it and cement the skills which we had learned.

    Days two and three were followed by lessons on the fundamentals of Ruby. We developed some Ruby applications that were run through the terminal and practiced programming fundamentals, such as creating variables, iterating through enumerables (arrays, hashes) and working with control statements.

    On Wednesday, the staff at Bitmaker took us to SPiN to unwind with ping pong and drinks, which was a lot of fun! Kevin represented the students in the winner-take-all match to end the night, and he came away with the belt. He was forever immortalized on Twitter wearing his victory belt!

    Thursday and Friday was an introduction to Object Oriented Programming in Ruby. It was significantly more difficult than any of the previous topics, but really awesome to see put into practice with the exercises we were given to practice.

    We wrapped up the week with a movie. Office Space had won the vote and there was plenty of pizza, popcorn and beer to go with it!

    Week two started with delicious waffles which Lucy was awesome enough to make for us!

    Our first lesson was really cool. Using Ruby, we wrote our own basic web hosting server and served some HTML files. This was a small scale project but it has been one of my favourites to date and I'm going to try to replicate and expand on the project. It helped to see the lifecycle of a request and response a web server, which was really valuable.

    The following days each focused on another element of our website development, and using a previous project we had developed to put each new skill into practice. Rather than using our own web server, we learned how to use Sinatra to develop a lightweight app. We began by adding simple ERB (Embedded Ruby) pages to display our data, followed by learning HTML and CSS, and how to use Forms to submit data to the server.

    We wrapped up by learning about Structured Query Language (SQL) and using Object Relationship Mapping (ORM) to store our data in a database. Our assignment had been to take an app we had made, a CRM application, which ran in the Terminal in the first week and now it was a fully functional web application!

    During the second week, one thing I really found great along the way was Coffee & Code with Julie twice a week! It's a one hour session before we get started on Tuesdays and Thursdays.

    We would get a small task in Ruby and find the solution in about five to ten minutes. Although the scale of each exercise was small, it really helped to fill in the blanks with some functions such as .map and .inject. I had looked up .inject previously, but it was the most difficult to understand. During the coffee & code exercises, it became really clear how to use the method, and have it become a useful tool in our own projects.

    I'm writing this up as we get set to end the week with our collaborative code review over beers, while I also make some final revisions to my CSS. CSS seems to be a never-ending task, by placing buttons on my web page where they have no business being!

    I hear we're diving into Rails next week, which should be a blast! I'll post again soon and follow-up. If you'd like to chat, you can find me on Twitter at @michael_fich."
});

Blog.create({
  title: "Intro to Ruby on Rails",
  user: User.first,
  published_at: Time.new(2015, 7, 5),
  body: "It's been a busy couple of weeks! Over weeks three and four at Bitmaker Labs, we dove into learning and using Ruby on Rails after learning the fundamentals of Ruby, HTML, CSS and working with Sinatra and DataMapper as well.

    To get familiar with the framework, our first exercise was to build a website called photogur, a website similar to imgur, which allows the user to provide a link to an image, a name and description of the image. After building the project out using the parameters we were given, I decided to try to write the project again from scratch without using any of the suggestions in the assignment and just coding on my own. I called the second copy of the assignment picgur and uploaded it to Heroku once I had finalized it. The link below is the result of my first Rails app.

    http://picgur.michaelfich.com/

    We were then given the task of creating an app called Rainforest! Rainforest, like Amazon, allows users to browse products and add their own comments/reviews of a particular product. I've really enjoyed working on Rainforest quite a lot and tried stretching the assignment a little further than the basic description (once I got it up and running) by adding categories for products to be listed under. I've also tried to use various Rails view helpers for generating the views more quickly and efficiently, and also more user friendly as well. One example is by using the helpers to format dates and times to be in a specific format, rather than the default Unix UTC date time format.

    I'm still tweaking this project, and just having a lot of fun playing around with it and seeing what else I can add to it. I'm going to be posting again in upcoming days once I get this app hosted on Heroku, like my Picgur app, to show my progress.

    Developing a web app feels like a puzzle that you're both designing and solving, but there's always extra pieces which can be added. It's really been a blast learning Ruby on Rails! With each new feature that we are taught to use, it motivates me to learn even more new features on my own. I'm searching for more content online, and used websites such as Railscasts and Tuts+ Premium as well.

    I'm really excited to learn to integrate Javascript, which I hear we're learning in the week to come (week 5 of 9) as well as API calls to other services and integrating more useful Ruby gems as well.

    Since my last blog post as well, I've integrated Disqus into this blog as well. It allows readers to post their own comments on this blog, by logging using your Facebook, Twitter, Google or Disqus accounts.

    Please do feel free to leave your comments, feedback or suggestions. I'd love to hear from you! I'm hoping to have the time to post my progress more frequently in the upcoming weeks and have some more blog posts as well. Thank you for reading, and please feel free to reach out to me via Twitter as well using @michael_fich."
})

Blog.create({
  title: "Rainforest",
  user: User.first,
  published_at: Time.new(2015, 7, 6),
  body: "In my last blog post, I provided a link to my first Ruby on Rails project, Picgur, a rudimentary clone of Imgur. A website which users can provide links to an image hosted online, give it a title and description.

    I've also been working on my second Ruby on Rails app over the past week as well and am putting the finishing touches on it. I've just launched it on Heroku as well, and it can be found at the link below.

    http://rainforest.michaelfich.com

    This app is reminiscent of Amazon, as you can browse products which have been listed on the website. You can sign up for your own account so that you can provide your own review on the products as well.

    Feel free to sign up on my Rainforest app and try it out. If you have any suggestions or feedback, it'd be great to connect with you! I've used Disqus to add a comments section on this blog, and you can reach me on Twitter using the handle @michael_fich as well.

    Thanks for reading!"
})

Blog.create({
  title: "TDD in Rails and Javascript Fundamentals",
  user: User.first,
  published_at: Time.new(2015, 7, 8),
  body: "Week 5 at Bitmaker Labs has been a blast!

    On Monday, we finished up our last Ruby on Rails lesson to come for a while with learning implement TDD in our rails apps to define how we would like to structure the code that would pass the tests which we've written for our code.

    It's something I've looked into independently in the past but had never really figured out on my own. Unlike many other programming concepts, I'm finding it difficult to use it in a new app because it feels like you're prolonging the coding process rather than speeding it up. However, I've read from other developers that it does initially feel like taking a step backwards and leads to actually speeding up the coding process in the long run.

    TDD (Test Driven Development) is something that I know is a valuable asset and I'm very motivated to become proficient in it, so I'm going actively keep at it. Coming into the course at Bitmaker Labs, it was one of the primary topics which I was very interested to learn.

    The past two days our focus has been shifted to learning the fundamentals of Javascript. Having done some Javascript and learning the basics of some Javascript frameworks in the past (jQuery, BackboneJS), much of the content was review. However, Javascript syntax can be very confusing and I thought that the lessons we've had over the past two days really helped to clarify the proper way to write Javascript, and have it produce predictable results.

    We've had one Javascript assignment recapping the fundamentals we had been taught. I've created an HTML file to output the values from the assignment for testing purposes rather than just merely using the console in Google Chrome in this scenario. I've listed the following links below to my Github repository for this assignment, as well as using Github's pages feature to have them host the HTML page so it can be viewed online as well.

    Github Repository | Github Hosted Page

    Outside of the classroom, I also checked out the Ruby Brigade meet-up that I came across on meetup.com along with several others from Bitmaker Labs as well. It was a lot of fun and I met some really cool local developers as well. I'm planning to go again next month and try to make my way to more developer events in Toronto as well.

    If you'd like to connect, please feel free to hit me up on Twitter using @michael_fich! Thanks for reading."
})

Blog.create({
  title: "Getting Started with Javascript",
  user: User.first,
  published_at: Time.new(2015, 7, 20),
  body: "It’s been a little less than two weeks since my last blog, and during that time I’ve been learning a lot.

    We began week 5 of the 9 week curriculum with an introduction to Javascript followed by jQuery as well. After some basic assignments to learn the fundamentals of performing actions in Javascript, using CSS selectors with jQuery to find DOM elements more easily, and familiarizing ourselves with some of the more frequently used jQuery methods, our assignment was to build a game of Tic Tac Toe using only what we had learned with Javascript & jQuery thus far.

    While it is a basic project, it was pretty fun to create it because there are multiple ways to write the logic to determine the winner of the game and several people came up with their own unique way of doing so. My personal method was to write a method to compare the values of three cells on the table to see if they were all occupied by the same player, and use that method from three separate methods which sent the parameters to first function depending on whether the calling methods were testing for row, column or diagonal winners.

    To me, this seemed like the most efficient way to approach the problem, though some of the approaches used by others were quite intriguing as well. One such method was for each cell on the game board to contain a class for each possible scenario it could be used for in a winning combination (ie. row1, column3, diagonal2) then test the equality of all cells with the same class name. Although I really like the ingenuity with this approach, it’s been my personal preference to try to keep the HTML markup for a project as readable as possible, and to only add elements or classes to existing elements if needed to add content or styling to the page.

    As I had just watched the new Batman vs. Superman: Dawn of Justice trailer earlier in the day (and it was awesome!), I felt like adding it as a theme for my Tic Tac Toe game to try to make it more fun. I found a few images from the trailers online and cropped them to use as game tokens and a game board as well. I also came across a font on Google Fonts named Press Start 2P which was exactly what I was looking for; a 1980’s style video game font from a coin-op arcade. I used it to implement the initial instructions, the scoreboard and winner text to try to make it more fun.

    If you’re interested in checking out the project, I’ve hosted it on Github as it only contained HTML, CSS and Javascript and did not require any server-side components. You can check it out at http://michaelfich.github.io/tictactoe/ to see the final product. Since there does run simply in your browser, without any data on the server, the scoreboard will reset if you refresh your page or close the browser. However, you can use the “New Game” button to continue playing while keeping score between two players.

    I have been considering expanding the idea of the game to a Rails project, and incorporate AJAX to make this a multiplayer game which each player can play from their own computer, rather than share one computer. Doing so would allow a much bigger range of possible features including player profiles and statistics and maybe expand on the theme to allow various movie heroes to be used as the players character, rather than just Batman and Superman. It’s something that I may come back to, as it was a lot of fun to do this relatively basic project and I’d love to expand upon it.

    During this past week, we really turned our focus to AJAX. AJAX is Javascript which can initiate a partial request-response page lifecycle without having to navigate to a new page in your web browser. This allows you to get back content from the server without needed to leave the current page. It’s very useful for improving the user experience on a website.

    We looked at a couple of different methods of performing an AJAX request, which included getting back an HTML response, a Javascript response, and finally a JSON response. To familiarize ourselves with AJAX, our assignment was to go back to our Rainforest project (an approximation of Amazon) and implement a search feature on our products page which would automatically
    update the same page with the search results without navigating away from the search page.

    After implementing the search feature, we also learned to paginate our products page as well using a Ruby gem named Kaminari as well. Although this didn’t require the use of AJAX, it did set us up to use AJAX to implement an infinite scroll on the page. Many websites such as Facebook, Twitter, Instagram, Google+ and Pinterest use infinite scroll. When you scroll near the bottom of a page, the website loads more data to allow the user to scroll to new content below.

    We finished this up by learning about the Rails way to implement AJAX as well which allows a form to submit data to the server while requesting an AJAX response back. This is something I’m still working on at the moment as I ran into some issues with creating different types of partial views but I hope to have completed later in the day. For now, the project can still be seen at http://rainforest.michaelfich.com as it was before. I’ve been pushing the updates to this project to Heroku.

    Today I’m beginning week 7 at Bitmaker Labs, and in keeping with the weekly tradition at Bitmaker Labs, Monday mornings start with waffles provided by Lucy and Erik! After lunch, we will be presenting our final project ideas in a Dragons Den format where we pitch the idea to the instructors and TA’s for their feedback, and also to the rest of the class to see if anyone is interested in joining you as a partner on the project as well. I’ve been really eager to start that project as I came into the course with an idea of what I wanted to make. However, I’m not yet ready to reveal that project idea just yet but please do stay tuned for updates over the next couple of weeks!

    Thanks for coming back and reading once again. If you’d like to get in touch, please reach out either through the comments section on this blog or using my Twitter handle of @michael_fich to say hi!"
})
