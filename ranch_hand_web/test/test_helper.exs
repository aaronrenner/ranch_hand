ExUnit.start()

Mox.defmock(RanchHandWeb.MockRanchHand, for: RanchHand.Backend)
Application.put_env(:ranch_hand, :backend, RanchHandWeb.MockRanchHand)
