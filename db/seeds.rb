# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = "boitier numérique full frame."
b = "boitier numérique apsc"
c = "focale fixe lunmineux"
d = "zoom grand angle"
# e = "teleobjectif"
# f = "zoom standard"
# g = "flash cobra"
h = "éclairage continu"

user = User.create!(email: "test3@gmail.com", password: "123456", password_confirmation: "123456", username: "Elo3")
user.profile.update!(first_name: 'Alan', last_name: 'Turing', address: '5 Parvis Alan Turing')

Category.destroy_all

Category.create!(name: "Reflex", description: "Appareil photo numérique de type reflex", id: 1, image_url: "categories/reflex.jpg")
Category.create!(name: "Objectif", description: "Optiques numériques de type zoom ou focale fixe", id: 2, image_url: "categories/objectif.jpg")
Category.create!(name: "Eclairage", description: "Tout type d'éclairage artificiel adapté pour le studio ou pour l'extérieur", id: 3, image_url: "categories/eclairage.jpg")

Item.destroy_all

# categorie 1
items = Item.create!(title: "Nikon D700", description: a, price: "10", category_id: 1, image_url: "boitier/nikonD700.jpg")
items.item_image.attach(io: File.open('app/assets/images/boitier/nikonD700.jpg'), filename: 'canon-eos-5d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-5d", description: a, price: "40", category_id: 1, image_url: "boitier/canon-eos-5d.jpg")
items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-5d.jpg'), filename: 'canon-eos-5d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-6d", description: a, price: "40", category_id: 1, image_url: "boitier/canon-eos-6d.jpg")
items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-6d.jpg'), filename: 'canon-eos-6d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-650", description: b, price: "35", category_id: 1, image_url: "boitier/canon-eos-650.jpg")
items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-650.jpg'), filename: 'canon-eos-650.jpg', content_type: 'image/jpg')

# Categorie 3
items = Item.create!(title: "sigma-17-70mm-f28-4-dc-macro-os-hsm", description: d, price: "15", category_id: 2, image_url: "objectif/17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg")
items.item_image.attach(io: File.open('app/assets/images/objectif/17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg'), filename: '17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-18-35mm-f18-dc-hsm", description: d, price: "20", category_id: 2, image_url: "objectif/location-objectif-sigma-18-35mm-f18-dc-hsm.jpg")
items.item_image.attach(io: File.open('app/assets/images/objectif/location-objectif-sigma-18-35mm-f18-dc-hsm.jpg'), filename: 'location-objectif-sigma-18-35mm-f18-dc-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-35mm-f14-dg-hsm", description: c, price: "15", category_id: 2, image_url: "objectif/sigma-35mm-f14-dg-hsm.jpg")
items.item_image.attach(io: File.open('app/assets/images/objectif/sigma-35mm-f14-dg-hsm.jpg'), filename: 'sigma-35mm-f14-dg-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ef-50mm-f12-l-usm", description: c, price: "30", category_id: 2, image_url: "objectif/canon-ef-50mm-f12-l-usm.jpg")
items.item_image.attach(io: File.open('app/assets/images/objectif/canon-ef-50mm-f12-l-usm.jpg'), filename: 'canon-ef-50mm-f12-l-usm.jpg', content_type: 'image/jpg')

# Categorie 2
items = Item.create!(title: "aputure-ls-mini-20d-148", description: a, price: "40", category_id: 3, image_url: "eclairage/aputure-ls-mini-20d-148.jpg")
items.item_image.attach(io: File.open('app/assets/images/eclairage/aputure-ls-mini-20d-148.jpg'), filename: 'aputure-ls-mini-20d-148.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Fresnel-HMI-4000w-Arri-D40", description: h, price: "15", category_id: 3, image_url: "eclairage/Fresnel-HMI-4000w-Arri-D40.png")
items.item_image.attach(io: File.open('app/assets/images/eclairage/Fresnel-HMI-4000w-Arri-D40.png'), filename: 'Fresnel-HMI-4000w-Arri-D40.png', content_type: 'image/png')

items = Item.create!(title: "idv-f50-fresnel-7ab", description: h, price: "35", category_id: 3, image_url: "eclairage/idv-f50-fresnel-led-ultra-compact-7ab.jpg")
items.item_image.attach(io: File.open('app/assets/images/eclairage/idv-f50-fresnel-led-ultra-compact-7ab.jpg'), filename: 'idv-f50-fresnel-led-ultra-compact-7ab.jpg', content_type: 'image/jpg')

items = Item.create!(title: "skylite-900fd-5600k-940", description: a, price: "20", category_id: 3, image_url: "eclairage/skylite-900fd-5600k-940.jpg")
items.item_image.attach(io: File.open('app/assets/images/eclairage/skylite-900fd-5600k-940.jpg'), filename: 'skylite-900fd-5600k-940.jpg', content_type: 'image/jpg')

# items = Item.create!(title: "lumix DC-GH5EF", description: a, price: "35", user_id: "1", category_id: "1", address: '3 rue de Lisbonne 75008 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5EF.png'), filename: 'lumix DC-GH5EF.png', content_type: 'image/png')
#
# items = Item.create!(title: "lumix DC-GH5LEF", description: a, price: "30", user_id: "1", category_id: "1", address: '132 rue Paradis, 13006 Marseille', city: "Marseille")
# items.item_images.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5LEF.png'), filename: 'lumix DC-GH5LEF.png', content_type: 'image/png')
#
# items = Item.create!(title: "lumix DC-GH5SE", description: a, price: "30", user_id: "1", category_id: "1", address: '10 rue de Lisbonne 75008 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5SE.png'), filename: 'lumix DC-GH5SE.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikon D3500", description: b, price: "35", user_id: "1", category_id: "1", address: '3 Place du Louvres 75001 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/nikon D3500.png'), filename: 'nikon D3500.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikon D600", description: b, price: "35", user_id: "1", category_id: "1", address: '12 rue des plantes 75014 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/nikon-d600.jpg'), filename: 'nikon-d600.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "Leica-C-Lux-Midnight", description: a, price: "60", user_id: "1", category_id: "1", address: '35 rue de Bourgogne 75007 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/Leica-C-Lux-Midnight.jpg'), filename: 'Leica-C-Lux-Midnight.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "Leica-D-Lux-7", description: a, price: "35", user_id: "1", category_id: "1", address: '20 rue Dussoubs 75002 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/Leica-D-Lux-7.jpg'), filename: 'Leica-D-Lux-7.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "Leica-V-LUX", description: a, price: "85", user_id: "1", category_id: "1", address: '20 RUE BREVIN 75014 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/boitier/LEICA-V-LUX.jpg'), filename: 'LEICA-V-LUX.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "sigma-17-70mm-f28-4-dc-macro-os-hsm", description: d, price: "15", user_id: "1", category_id: "3", address: '71 avenue Henri Martin 75016 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg'), filename: '17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "sigma-18-35mm-f18-dc-hsm", description: d, price: "20", user_id: "1", category_id: "3", address: '120 rue Ordener 75018 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/location-objectif-sigma-18-35mm-f18-dc-hsm.jpg'), filename: 'location-objectif-sigma-18-35mm-f18-dc-hsm.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "sigma-35mm-f14-dg-hsm", description: c, price: "15", user_id: "1", category_id: "3", address: '121 rue Paradis, 13006 Marseille', city: "Marseille")
# items.item_images.attach(io: File.open('app/assets/images/objectif/sigma-35mm-f14-dg-hsm.jpg'), filename: 'sigma-35mm-f14-dg-hsm.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "canon-ef-50mm-f12-l-usm", description: c, price: "30", user_id: "1", category_id: "3", address: '48 rue St Andre des arts 75006 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/canon-ef-50mm-f12-l-usm.jpg'), filename: 'canon-ef-50mm-f12-l-usm.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "canon-ef-100mm-f28-l-macro-is-usm", description: c, price: "35", user_id: "1", category_id: "3", address: '7 rue Jean Nicot 75007 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/canon-ef-100mm-f28.jpg'), filename: 'canon-ef-100mm-f28.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "canon-ts-e-24mm-f35-l-ii", description: c, price: "40", user_id: "1", category_id: "3", address: '23 rue du Docteur Potain 75019 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/canon-ts-e-24mm-f35.jpg'), filename: 'canon-ts-e-24mm-f35.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "nikkor afp_dx_70_300", description: e, price: "15", user_id: "1", category_id: "3", address: '3 place Jacques Froment 75018 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/nikkor_afp_dx_70_300.png'), filename: 'nikkor_afp_dx_70_300.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikkor", description: 'no description', price: "30", user_id: "1", category_id: "3", address: '18 rue Batignolles 75017 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/nikon.png'), filename: 'nikon.png', content_type: 'image/png')
#
# items = Item.create!(title: "lumix 45-200", description: f, price: "20", user_id: "1", category_id: "3", address: '24 rue Saint Roch 75001 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/lumix-45-200.png'), filename: 'lumix-45-200.png', content_type: 'image/png')
#
# items = Item.create!(title: "lumix 43-600", description: f, price: "25", user_id: "1", category_id: "3", address: '365 rue de Vaugirad 75015 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/objectif/lumix-43-600.png'), filename: 'lumix-43-600.png', content_type: 'image/png')
#
# items = Item.create!(title: "aputure-ls-mini-20d-148", description: a, price: "40", user_id: "1", category_id: "2", address: '12 rue peins 75013 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/aputure-ls-mini-20d-148.jpg'), filename: 'aputure-ls-mini-20d-148.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "Fresnel-HMI-4000w-Arri-D40", description: h, price: "15", user_id: "1", category_id: "2", address: '33 bvd de picpus 75012 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/Fresnel-HMI-4000w-Arri-D40.png'), filename: 'Fresnel-HMI-4000w-Arri-D40.png', content_type: 'image/png')
#
# items = Item.create!(title: "idv-f50-fresnel-7ab", description: h, price: "35", user_id: "1", category_id: "2", address: '140 rue Paradis, 13006 Marseille', city: "Marseille")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/idv-f50-fresnel-led-ultra-compact-7ab.jpg'), filename: 'idv-f50-fresnel-led-ultra-compact-7ab.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "skylite-900fd-5600k-940", description: a, price: "20", user_id: "1", category_id: "2", address: '23 bis rue Bichat 75010 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/skylite-900fd-5600k-940.jpg'), filename: 'skylite-900fd-5600k-940.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "ISO kit d'éclairage continu 1 Mandarine 800W + 1 pied + coupe flux", description: h, price: "15", user_id: "1", category_id: "2", address: '4 Place du Louvres 75001 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/mandarine.jpg'), filename: 'mandarine.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "PROFOTO-Cine-Reflect-T7BM", description: a, price: "30", user_id: "1", category_id: "2", address: '68 rue des plantes 75014 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/PROFOTO-Cine-Reflect-T7BM_sld.jpg'), filename: 'PROFOTO-Cine-Reflect-T7BM_sld.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "Blonde", description: a, price: "20", user_id: "1", category_id: "2", address: '29 rue de Bourgogne 75007 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/blonde.jpg'), filename: 'blonde.jpg', content_type: 'image/jpg')
#
# items = Item.create!(title: "canon speedlite-430", description: g, price: "20", user_id: "1", category_id: "2", address: '125 bis rue d Avron 75020 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/canon-speedlite-430.png'), filename: 'canon-speedlite-430.png', content_type: 'image/png')
#
# items = Item.create!(title: "canon speedlite-470", description: g, price: "25", user_id: "1", category_id: "2", address: '22 rue Meynadier 75019 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/canon-speedlite-470.png'), filename: 'canon-speedlite-470.png', content_type: 'image/png')
#
# items = Item.create!(title: "canon speedlite-600", description: g, price: "30", user_id: "1", category_id: "2", address: '5 Boulevard Diderot 75012 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/canon-speedlite-600.png'), filename: 'canon-speedlite-600.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikon76683351", description: g, price: "15", user_id: "1", category_id: "2", address: '14 RUE BREVIN 75014 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/nikon76683351.png'), filename: 'nikon76683351.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikon1188724895", description: g, price: "2", user_id: "1", category_id: "2", address: '115 bis rue Ordener 75018 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/nikon1188724895.png'), filename: 'nikon1188724895.png', content_type: 'image/png')
#
# items = Item.create!(title: "nikon-speedlight-sb5000", description: g, price: "25", user_id: "1", category_id: "2", address: ' 5 Boulevard Diderot 75012 PARIS', city: "Paris")
# items.item_images.attach(io: File.open('app/assets/images/eclairage/nikon-speedlight-sb5000.png'), filename: 'nikon-speedlight-sb5000.png', content_type: 'image/png')
