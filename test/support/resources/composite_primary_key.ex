defmodule AshGraphql.Test.CompositePrimaryKey do
  @moduledoc false

  use Ash.Resource,
    data_layer: Ash.DataLayer.Ets,
    extensions: [AshGraphql.Resource]

  graphql do
    type :composite_primary_key
    primary_key_delimiter "~"

    queries do
      get :get_composite_primary_key, :read
    end
  end

  attributes do
    uuid_primary_key(:first)
    uuid_primary_key(:second)
  end
end
