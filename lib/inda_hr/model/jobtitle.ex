# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.Jobtitle do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Value,
    :Details
  ]

  @type t :: %__MODULE__{
    :Value => String.t | nil,
    :Details => inda_hr.Model.JobtitleDetail.t | nil
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.Jobtitle do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, inda_hr.Model.JobtitleDetail, options)
  end
end

