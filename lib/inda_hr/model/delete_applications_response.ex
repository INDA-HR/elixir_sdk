# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.DeleteApplicationsResponse do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ResumeID,
    :AnalysisStatus,
    :Deleted
  ]

  @type t :: %__MODULE__{
    :ResumeID => String.t,
    :AnalysisStatus => String.t,
    :Deleted => boolean()
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.DeleteApplicationsResponse do
  def decode(value, _options) do
    value
  end
end

