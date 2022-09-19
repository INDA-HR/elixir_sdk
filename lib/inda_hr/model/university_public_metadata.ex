# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.UniversityPublicMetadata do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"CreationDate",
    :"LastModified",
    :"Exists"
  ]

  @type t :: %__MODULE__{
    :"CreationDate" => DateTime.t,
    :"LastModified" => DateTime.t,
    :"Exists" => boolean() | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UniversityPublicMetadata do
  def decode(value, _options) do
    value
  end
end

