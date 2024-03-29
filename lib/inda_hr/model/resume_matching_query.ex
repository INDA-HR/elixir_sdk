# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ResumeMatchingQuery do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :QueryFilters,
    :JobAd
  ]

  @type t :: %__MODULE__{
    :QueryFilters => inda_hr.Model.QueryFilters.t | nil,
    :JobAd => inda_hr.Model.JobAd.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ResumeMatchingQuery do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:QueryFilters, :struct, inda_hr.Model.QueryFilters, options)
    |> deserialize(:JobAd, :struct, inda_hr.Model.JobAd, options)
  end
end

