# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.JobadMatchingEvidenceQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :JobAdIDs,
    :Resume
  ]

  @type t :: %__MODULE__{
    :JobAdIDs => [String.t],
    :Resume => inda_hr.Model.Resume.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.JobadMatchingEvidenceQuery do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Resume, :struct, inda_hr.Model.Resume, options)
  end
end

