# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.SemanticHistoryBody do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"APICalls",
    :"Datetime",
    :"GroupBy",
    :"ScrollID",
    :"Detail",
    :"Advanced",
    :"Price"
  ]

  @type t :: %__MODULE__{
    :"APICalls" => [String.t] | nil,
    :"Datetime" => inda_hr.Model.DateBody.t | nil,
    :"GroupBy" => [String.t] | nil,
    :"ScrollID" => String.t | nil,
    :"Detail" => boolean() | nil,
    :"Advanced" => boolean() | nil,
    :"Price" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SemanticHistoryBody do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Datetime", :struct, inda_hr.Model.DateBody, options)
  end
end

