# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.FoundCandidatesResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Total,
    :Hits,
    :SearchID,
    :Out
  ]

  @type t :: %__MODULE__{
    :Total => integer() | nil,
    :Hits => integer() | nil,
    :SearchID => String.t | nil,
    :Out => [inda_hr.Model.SearchCandidateElement.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.FoundCandidatesResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Out, :list, inda_hr.Model.SearchCandidateElement, options)
  end
end

