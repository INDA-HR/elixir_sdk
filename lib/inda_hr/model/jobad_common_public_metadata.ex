# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.JobadCommonPublicMetadata do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Language",
    :"CreationDate",
    :"LastModified"
  ]

  @type t :: %__MODULE__{
    :"Language" => String.t | nil,
    :"CreationDate" => DateTime.t,
    :"LastModified" => DateTime.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadCommonPublicMetadata do
  def decode(value, _options) do
    value
  end
end
