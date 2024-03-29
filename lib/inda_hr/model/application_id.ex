# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.ApplicationId do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :ResumeID,
    :JobAdID
  ]

  @type t :: %__MODULE__{
    :ResumeID => String.t,
    :JobAdID => inda_hr.Model.Jobadid.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.ApplicationId do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:JobAdID, :struct, inda_hr.Model.Jobadid, options)
  end
end

