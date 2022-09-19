# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.BucketItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Resume",
    :"URL",
    :"InternalID"
  ]

  @type t :: %__MODULE__{
    :"Resume" => map(),
    :"URL" => String.t,
    :"InternalID" => AnyOfintegerstring | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.BucketItem do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"InternalID", :struct, inda_hr.Model.AnyOfintegerstring, options)
  end
end

