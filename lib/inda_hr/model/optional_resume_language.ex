# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule inda_hr.Model.OptionalResumeLanguage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Details",
    :"Value"
  ]

  @type t :: %__MODULE__{
    :"Details" => inda_hr.Model.OptionalResumeLanguageDetails.t | nil,
    :"Value" => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.OptionalResumeLanguage do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Details", :struct, inda_hr.Model.OptionalResumeLanguageDetails, options)
  end
end

