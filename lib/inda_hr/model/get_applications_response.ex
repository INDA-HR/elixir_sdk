# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.GetApplicationsResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Total,
    :Hits,
    :SearchID,
    :ResumeID,
    :Applications
  ]

  @type t :: %__MODULE__{
    :Total => integer() | nil,
    :Hits => integer() | nil,
    :SearchID => String.t | nil,
    :ResumeID => String.t,
    :Applications => [inda_hr.Model.ApplicationsInner.t]
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.GetApplicationsResponse do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Applications, :list, inda_hr.Model.ApplicationsInner, options)
  end
end

