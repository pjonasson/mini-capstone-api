Rails.application.routes.draw do
  get "/kobe", controller: "products", action: "kobe_jersey"
  get "/all_jerseys", controller: "products", action: "all_product"
  get "/von_miller", controller: "products", action: "von"
  get "/chris_sale", controller: "products", action: "chris"
end
