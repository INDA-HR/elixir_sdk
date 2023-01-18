# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule inda_hr.Model.SlimJobAdSkill do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :Details,
    :Value
  ]

  @type t :: %__MODULE__{
    :Details => inda_hr.Model.SlimJobAdSkillDetails.t | nil,
    :Value => String.t
  }
end

defimpl Poison.Decoder, for: inda_hr.Model.SlimJobAdSkill do
  import inda_hr.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:Details, :struct, inda_hr.Model.SlimJobAdSkillDetails, options)
  end
end

