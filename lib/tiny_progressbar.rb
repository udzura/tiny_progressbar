# -*- coding: utf-8 -*-
require "tiny_progressbar/version"

class TinyProgressbar
  LF = "\r"
  FORMAT = "[%-30s] (%03d/%03d done)"

  # プログレスバーを初期化する。
  # 引数として、処理対象となるオブジェクトの個数を渡す。
  # @param [Integer] goal 処理対象のオブジェクト個数
  def initialize(goal)
    @goal = goal
    @now = 0
    display
  end
  attr_reader :goal, :now

  # プログレスバーを1ポイント進捗させる。
  # 同時に、進捗状況を表示する。
  def succeed
    @now += 1
    back_cursor
    display
  end

  def clear
    print LF + " " * 100 + LF
  end

  def back_cursor
    print LF
  end

  def display
    print FORMAT % [("=" * (30 * @now / @goal)), @now, @goal]
  end
end
