# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.IdEntityInput do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"EntityID",
    :"Entity"
  ]

  @type t :: %__MODULE__{
    :"EntityID" => String.t,
    :"Entity" => inda_hr.Model.EntityInput.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.IdEntityInput do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Entity", :struct, inda_hr.Model.EntityInput, options)
  end
end
