# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.AttachmentsV3 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"JobDescription"
  ]

  @type t :: %__MODULE__{
    :"JobDescription" => inda_hr.Model.AttachmentV2.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.AttachmentsV3 do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"JobDescription", :struct, inda_hr.Model.AttachmentV2, options)
  end
end

