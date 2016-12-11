class StoreIndex < Chewy::Index
  define_type Product.includes(:seller) do
    field :name, :description
    field :seller do
      field :name
      field :description
    end
  end

  define_type Seller.includes(:products) do
    field :name, :description
    field :products do
      field :name, :description
    end
  end

  define_type Review.includes(:reviewer) do
    field :body
    field :reviewer do
      field :name, :bio
    end
  end

  define_type Reviewer.includes(:reviews) do
    field :name, :bio
    field :reviews do
      field :body
    end
  end
end
