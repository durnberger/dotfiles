return {

    -- aside
    require("luasnip").snippet({
            trig = "aside", 
            namr = "Use aside in markdown",
            dscr = "Use aside in markdown",
        },

        {
            t({"<aside markdown=\"1\">", ""}),
            t({"", ""}),    --create a new line            
            i(0),           --cursor jumps to this point when snippet is called
            t({"", ""}),
            t({"", "</aside>"}),
        }

    ),

    -- figure (single image)
    require("luasnip").snippet({
            trig = "image single", 
            namr = "image single",
            dscr = "image single",
        },

        {
            t({"<figure class=\"centered\">"}),
            t({"", ""}),            
            t({"    <img src=\""}),
            i(0),
            t({"\">"}),
            t({"", ""}),            
            t({"    <figcaption class=\"figure-caption\">   </figcaption>"}),
            t({"", ""}),            
            t({"</figure>"}),
        }
    ),

     -- figure (multiple images)
    require("luasnip").snippet({
            trig = "image multiple", 
            namr = "image multiple",
            dscr = "image multiple",
        },

        {
            t({"<figure class=\"figure\" style=\"width: %\">"}),
            t({"", ""}),            
            t({"    <img src=\""}),
            i(0),
            t({"\" class=\"figure-img img-fluid\">"}),
            t({"", ""}),            
            t({"    <figcaption class=\"figure-caption\">   </figcaption>"}),
            t({"", ""}),            
            t({"</figure>"}),
        }
    ),
           
    -- standalone caption for images 
    require("luasnip").snippet({
            trig = "caption", 
            namr = "image caption",
            dscr = "image caption",
        },

        {
            t({"", "<figcaption>"}),
            i(0),            
            t({"</figcaption>", ""}),
        }
    ),
       
    -- yaml front matter
    require("luasnip").snippet({
            trig = "fm",
            namr = "Front Matter",
            dscr = "Yaml frontmatter"
        },
        
        {
            t({"---"}),
            t({"", "title: "}), 
            t({"", "date: "}),
            t({"", "author: Paul Dürnberger"}),
            t({"", "uid: "}),
            t({"", "layout: post"}),
            t({"", "categories: []"}), 
            t({"", "tags: []"}),
            t({"", "featured_image: "}),
            t({"", "synopsis: "}),
            t({"", "---"}),
            t({"", ""}),
            i(0)
        }
    ),

-- no scripts below this line    
}


