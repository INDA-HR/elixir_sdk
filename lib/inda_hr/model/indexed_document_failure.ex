# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.IndexedDocumentFailure do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Indexname",
    :"ResumeID",
    :"JobAdID",
    :"Datetime",
    :"Filename",
    :"Context",
    :"ErrorMsg",
    :"DuplicateResumeID",
    :"DuplicateJobAdID"
  ]

  @type t :: %__MODULE__{
    :"Indexname" => String.t | nil,
    :"ResumeID" => String.t | nil,
    :"JobAdID" => String.t | nil,
    :"Datetime" => String.t | nil,
    :"Filename" => String.t | nil,
    :"Context" => String.t | nil,
    :"ErrorMsg" => String.t | nil,
    :"DuplicateResumeID" => String.t | nil,
    :"DuplicateJobAdID" => String.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.IndexedDocumentFailure do
  def decode(value, _options) do
    value
  end
end

