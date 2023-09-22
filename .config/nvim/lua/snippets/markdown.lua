return {
    -- html figure image caption 
    require("luasnip").snippet({
        trig = "fig", 
        namr = "Figure, image & caption",
        dscr = "Image Placeholder",
        },

        {
        t({"<figure>"}),
        t({"", "    <img src=\" \" alt=\" \">"}),
        t({"", "    <figcaption> </figcaption>"}),
        t({"", "</figure>"})
        
    }),
        
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
    }),

-- no scripts below this line    
}


