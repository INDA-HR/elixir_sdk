# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.ExtractionItem do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Data",
    :"Attachments"
  ]

  @type t :: %__MODULE__{
    :"Data" => inda_hr.Model.ResumeCommonData.t,
    :"Attachments" => inda_hr.Model.ExtractionResponsesAttachments.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ExtractionItem do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Data", :struct, inda_hr.Model.ResumeCommonData, options)
    |> deserialize(:"Attachments", :struct, inda_hr.Model.ExtractionResponsesAttachments, options)
  end
end
