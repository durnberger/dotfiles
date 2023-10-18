return {

    -- aside
    require("luasnip").snippet({
            trig = "aside", 
            namr = "Use aside in markdown",
            dscr = "Use aside in markdown",
        },

        {
            t({"<aside markdown=\"1\">", ""}),
            t({"", ""}),            
            i(0),
            t({"", ""}),
            t({"", "</aside>"}),
        }

    ),

    -- caption images 
    require("luasnip").snippet({
            trig = "caption", 
            namr = "Caption for image",
            dscr = "Caption for an image",
        },

        {
            t({"", "<figcaption>"}),
            i(0),            
            t({"</figcaption>", ""}),
        }
    ),

   -- image & caption placeholder 
   require("luasnip").snippet({
            trig = "image", 
            namr = "Figure, image & caption",
            dscr = "Image placeholder",
        },

        {
            t({"<figure>", ""}),                  
            t({"    <img src=\""}), i(0), t({"\" alt=\"image\">", ""}),
            t({"    <figcaption> </figcaption>", ""}),       
            t({"</figure>"})
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


