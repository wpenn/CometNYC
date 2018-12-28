
# "$" = 1 #budget
# "$$" = 2 #mid-range
# "$$$" = 3 #high-end
# "$$$$" = 4 #very high-end

def stores(neighborhood,price,gender)

if price == "Budget"
  price = 1
elsif price == "Mid-Range"
  price = 2
elsif price == "High-End"
  price = 3
elsif price == "Very High-End"
  price = 4
else
  price = 0
end

#puts price
#binding.pry

neighborhood_hash = {
  "NoHo":{
    1=>{male:{},
        female:{}},
    2=>{male:{
          Oak:{
            address:"28 Bond St, New York, NY 10012",
            hours:"11am - 8pm",
            description:"Boutique offering selection of menswear and womenswear from designers, a house label & accessories",
            website:"https://www.oaknyc.com/"}},
        female:{
          Oak:{
            address:"28 Bond St, New York, NY 10012",
            hours:"11am - 8pm",
            description:"Boutique offering selection of menswear and womenswear from designers, a house label & accessories",
            website:"https://www.oaknyc.com/"},
          Otte:{
            address:"281 Mott Street New York, NY 10012",
            hours:"11am - 7pm",
            description:"This bright, girly shop offers downtown looks from designers like Rebecca Taylor, Paul & Joe, and Loeffler Randall",
            website:"https://otteny.com/en/"}}},
    3=>{male:{},
        female:{}},
    4=>{male:{},
        female:{}}
  },
##################################################
  "SoHo":{
    1=>{male:{},
        female:{}},
    2=>{male:{
          Opening_Ceremony:{
            address:"35 Howard St., New York, NY 10013",
            hours:"11pm - 8pm",
            description:"Hip, cosmopolitan unisex clothing store showcasing fashions from abroad plus iconic brands",
            website:"https://www.openingceremony.com/"}},
        female:{
          Opening_Ceremony:{
            address:"35 Howard St., New York, NY 10013",
            hours:"11pm - 8pm",
            description:"Hip, cosmopolitan unisex clothing store showcasing fashions from abroad plus iconic brands",
            website:"https://www.openingceremony.com/"}}},
    3=>{male:{
          What_Goes_Around_Comes_Around:{
            address:"351 West Broadway, New York, NY 10013",
            hours:"11pm - 8pm",
            description:"Shop specializing in vintage designer apparel & accessories for men & women, plus line of originals",
            website:"http://www.whatgoesaroundnyc.com/"},
          VFILES:{
            address:"12 Mercer St, New York, NY 10013",
            hours:"11am - 7pm",
            description:"Hip, minimalist boutique showcasing edgy streetwear & designer apparel & accessories",
            website:"https://www.vfiles.com/welcome"}},
        female:{
          What_Goes_Around_Comes_Around:{
            address:"351 West Broadway, New York, NY 10013",
            hours:"11pm - 8pm",
            description:"Shop specializing in vintage designer apparel & accessories for men & women, plus line of originals",
            website:"http://www.whatgoesaroundnyc.com/"},
          VFILES:{
            address:"12 Mercer St, New York, NY 10013",
            hours:"11am - 7pm",
            description:"Hip, minimalist boutique showcasing edgy streetwear & designer apparel & accessories",
            website:"https://www.vfiles.com/welcome"}}},
    4=>{male:{},
        female:{
          Kirna_Zabete:{
            address:"477 Broome St., New York, NY 10013",
            hours:"11pm - 7pm",
            description:"Description",
            website:"http://www.kirnazabete.com/"}}}
  },
##################################################
  "East Village":{
    1=>{male:{},
        female:{}},
    2=>{male:{
          Flight_Club:{
            address:"812 Broadway, New York, NY 10003",
            hours:"12am - 8pm",
            description:"Bustling retail & consignment store for rare & popular sneakers in an airy, polished setting",
            website:"http://www.flightclub.com/"}},
        female:{
          Flight_Club:{
            address:"812 Broadway, New York, NY 10003",
            hours:"12am - 8pm",
            description:"Bustling retail & consignment store for rare & popular sneakers in an airy, polished setting",
            website:"http://www.flightclub.com/"}}},
    3=>{male:{
          Blue_and_Cream:{
            address:"1 E. 1st St., New York, NY 10003",
            hours:"11pm - 7pm",
            description:"Hip fashion boutique for men & women featuring upscale designer lines & the house brand",
            website:"http://www.blueandcream.com/"}},
        female:{
          Blue_and_Cream:{
            address:"1 E. 1st St., New York, NY 10003",
            hours:"11pm - 7pm",
            description:"Hip fashion boutique for men & women featuring upscale designer lines & the house brand",
            website:"http://www.blueandcream.com/"},
          Pas_de_Deux:{
            address:"328 E. 11th St., New York, NY 10003",
            hours:"12am - 8pm",
            description:"Women's boutique stocking contemporary designer apparel & accessories in digs with a vintage vibe",
            website:"http://pasdedeuxny.com/"}}},
    4=>{male:{},
        female:{}}
  },
##################################################
  "Upper East Side":{
    1=>{male:{},
        female:{}},
    2=>{male:{},
        female:{
          Otte:{
            address:"1232 Third Avenue New York, NY 10021 | 1281 Madison Ave New York, NY 10128 ",
            hours:"11am - 7pm | 10am - 6pm",
            description:"This bright, girly shop offers downtown looks from designers like Rebecca Taylor, Paul & Joe, and Loeffler Randall",
            website:"https://otteny.com/en/"}}},
    3=>{male:{},
        female:{
          Edit:{
            address:"1368 Lexington Ave, New York, NY 10128",
            hours:"10:30am - 6:30pm",
            description:"A 2,500-square-foot boutique packed with well-edited apparel, jewelry, and handbags from high-end designers",
            website:"N/A"}}},
    4=>{male:{},
        female:{
          Five_Story:{
            address:"18 E 69th St, New York, NY 10021",
            hours:"10am - 6pm",
            description:"Apparel & accessories from emerging designers, plus decor items, in a luxurious townhouse setting",
            website:"http://www.fivestoryny.com/"}}}
  },
##################################################
  "Midtown East":{
    1=>{male:{},
        female:{}},
    2=>{male:{},
        female:{}},
    3=>{male:{
          Dover_Street_Market:{
            address:"160 Lexington Ave, New York, NY 10016",
            hours:"11am - 7pm",
            description:"Hip, sprawling showcase of high-end clothing & fashion-forward displays, plus a gourmet cafe",
            website:"http://newyork.doverstreetmarket.com/"}},
        female:{
          Dover_Street_Market:{
            address:"160 Lexington Ave, New York, NY 10016",
            hours:"11am - 7pm",
            description:"Hip, sprawling showcase of high-end clothing & fashion-forward displays, plus a gourmet cafe",
            website:"http://newyork.doverstreetmarket.com/"}}},
    4=>{male:{
          Dover_Street_Market:{
            address:"160 Lexington Ave, New York, NY 10016",
            hours:"11am - 7pm",
            description:"Hip, sprawling showcase of high-end clothing & fashion-forward displays, plus a gourmet cafe",
            website:"http://newyork.doverstreetmarket.com/"}},
        female:{
          Dover_Street_Market:{
            address:"160 Lexington Ave, New York, NY 10016",
            hours:"11am - 7pm",
            description:"Hip, sprawling showcase of high-end clothing & fashion-forward displays, plus a gourmet cafe",
            website:"http://newyork.doverstreetmarket.com/"}}}
  },
##################################################
  "West Village":{
    1=>{male:{},
        female:{}},
    2=>{male:{},
        female:{}},
    3=>{male:{},
        female:{
          Otte:{
            address:"121 Greenwich Ave., New York, NY 10014",
            hours:"11:30am - 7:30pm",
            description:"This bright, girly shop offers downtown looks from designers like Rebecca Taylor, Paul & Joe, and Loeffler Randall",
            website:"https://otteny.com/en/"}}},
    4=>{male:{},
        female:{}}
  },
##################################################
  "TriBeCa":{
    1=>{male:{},
        female:{}},
    2=>{male:{},
        female:{
          Otte:{
            address:"37 North Moore Street New York, NY 10013",
            hours:"11am - 7pm",
            description:"This bright, girly shop offers downtown looks from designers like Rebecca Taylor, Paul & Joe, and Loeffler Randall",
            website:"https://otteny.com/en/"}}},
    3=>{male:{
          Patron_of_the_New:{
            address:"151 Franklin St, New York, NY 10013",
            hours:"12am - 7am",
            description:"Airy, warehouse-chic shop with upscale designer men's & women's clothes, plus shoes & housewares",
            website:"https://patronofthenew.us/"}},
        female:{
          Patron_of_the_New:{
            address:"151 Franklin St, New York, NY 10013",
            hours:"12am - 7am",
            description:"Airy, warehouse-chic shop with upscale designer men's & women's clothes, plus shoes & housewares",
            website:"https://patronofthenew.us/"}}},
    4=>{male:{},
        female:{}}
  },
##################################################
  "Chelsea":{
    1=>{male:{},
        female:{}},
    2=>{male:{
          Opening_Ceremony:{
            address:"1190 Broadway, New York, NY 10001",
            hours:"11pm - 8pm",
            description:"Hip, cosmopolitan unisex clothing store showcasing fashions from abroad plus iconic brands",
            website:"https://www.openingceremony.com/"}},
        female:{
          Opening_Ceremony:{
            address:"1190 Broadway, New York, NY 10001",
            hours:"11pm - 8pm",
            description:"Hip, cosmopolitan unisex clothing store showcasing fashions from abroad plus iconic brands",
            website:"https://www.openingceremony.com/"}}},
    3=>{male:{},
        female:{}},
    4=>{male:{
          Jeffrey:{
            address:"449 W 14th St, New York, NY 10014",
            hours:"Hours",
            description:"Iconic purveyor of high-end apparel, fragrances, accessories & more (some focus on jewelry)",       website:"https://www.jeffreynewyork.com/"}},
        female:{
          Jeffrey:{
            address:"449 W 14th St, New York, NY 10014",
            hours:"Hours",
            description:"Iconic purveyor of high-end apparel, fragrances, accessories & more (some focus on jewelry)",
            website:"https://www.jeffreynewyork.com/"}}}
  },
##################################################
  "Brooklyn":{
    1=>{male:{},
        female:{}},
    2=>{male:{
          Oak:{
            address:"55 Nassau Ave, Brooklyn, NY 11222",
            hours:"11am - 8pm",
            description:"Boutique offering selection of menswear and womenswear from designers, a house label & accessories",
            website:"https://www.oaknyc.com/"}},
        female:{
          Oak:{
            address:"55 Nassau Ave, Brooklyn, NY 11222",
            hours:"11am - 8pm",
            description:"Boutique offering selection of menswear and womenswear from designers, a house label & accessories",
            website:"https://www.oaknyc.com/"},
          Bird_location1:{
            address:"316 Fifth Ave., Brooklyn, NY 11215",
            hours:"11am - 7pm",
            description:"Fashionable store offering hip, upscale apparel & accessories by a range of designers",
            website:"http://shopbird.com/"},
          Bird_location2:{
            address:"220 Smith Street Brooklyn, NY 11201",
            hours:"11am - 8pm",
            description:"Cute corner boutique featuring upscale women's apparel, shoes & accessories from modern designers",
            website:"http://shopbird.com/"}}},
    3=>{male:{
          Bird:{
            address:"203 Grand St., Brooklyn, NY 11211",
            hours:"11am - 8pm",
            description:"Indie boutique selling modern designer apparel, shoes & jewelry in a green-certified building",
            website:"http://shopbird.com/"}},
        female:{
          Bird:{
            address:"203 Grand St., Brooklyn, NY 11211",
            hours:"11am - 8pm",
            description:"Indie boutique selling modern designer apparel, shoes & jewelry in a green-certified building",
            website:"http://shopbird.com/"}}},
    4=>{male:{},
        female:{}}
  }
}




return neighborhood_hash[neighborhood.to_sym][price][gender.downcase.to_sym]
# neighborhood_hash[neighborhood.to_sym][price][gender.downcase.to_sym].each do |store_name, store_details|
#   store_details.each do |key, value|
#     return "#{store_name} \n
# #{key}: #{value}"
#   end
#end



end



