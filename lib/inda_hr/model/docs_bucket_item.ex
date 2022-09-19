# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.DocsBucketItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Resume",
    :"URL",
    :"InternalID"
  ]

  @type t :: %__MODULE__{
    :"Resume" => inda_hr.Model.DocsImportResume.t,
    :"URL" => String.t,
    :"InternalID" => AnyOfintegerstring | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.DocsBucketItem do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Resume", :struct, inda_hr.Model.DocsImportResume, options)
    |> deserialize(:"InternalID", :struct, inda_hr.Model.AnyOfintegerstring, options)
  end
end
