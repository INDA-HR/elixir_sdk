# NOTE: This file is auto generated by OpenAPI Generator 6.3.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IndaHr.Model.AwsCredentials do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :RegionName,
    :AWSID,
    :AWSKey
  ]

  @type t :: %__MODULE__{
    :RegionName => String.t,
    :AWSID => String.t,
    :AWSKey => String.t
  }
end

defimpl Poison.Decoder, for: IndaHr.Model.AwsCredentials do
  def decode(value, _options) do
    value
  end
end
