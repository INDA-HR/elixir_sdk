# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.UpdatePicRequest do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Attachments"
  ]

  @type t :: %__MODULE__{
    :"Attachments" => inda_hr.Model.PicAttachmentImage.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.UpdatePicRequest do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Attachments", :struct, inda_hr.Model.PicAttachmentImage, options)
  end
end
