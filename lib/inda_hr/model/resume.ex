# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Resume do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Data,
    :Metadata,
    :Attachments
  ]

  @type t :: %__MODULE__{
    :Data => inda_hr.Model.ResumeCommonData.t,
    :Metadata => inda_hr.Model.MatchingResumeMatchingPublicMetadata.t | nil,
    :Attachments => inda_hr.Model.MatchingDocumentAttachmentV6.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Resume do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Data, :struct, inda_hr.Model.ResumeCommonData, options)
    |> deserialize(:Metadata, :struct, inda_hr.Model.MatchingResumeMatchingPublicMetadata, options)
    |> deserialize(:Attachments, :struct, inda_hr.Model.MatchingDocumentAttachmentV6, options)
  end
end

