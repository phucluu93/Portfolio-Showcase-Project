#!/bin/bash

# Script để tính Lãi đơn (Simple Interest)
# Công thức: SI = (P * T * R) / 100

echo "--- Máy tính Lãi đơn ---"

# 1. Nhập Vốn gốc (Principal)
echo "Nhập số tiền Vốn gốc (P):"
read P

# 2. Nhập Lãi suất hàng năm (Rate)
echo "Nhập Lãi suất hàng năm (R) (%):"
read R

# 3. Nhập Thời gian (Time) (số năm)
echo "Nhập Thời gian (T) (số năm):"
read T

# Tính Lãi đơn
# Sử dụng 'bc' (basic calculator) để thực hiện phép tính dấu phẩy động
# scale=2 để làm tròn đến 2 chữ số thập phân
SIMPLE_INTEREST=$(echo "scale=2; ($P * $T * $R) / 100" | bc)

# Tính Tổng số tiền cuối kỳ
TOTAL_AMOUNT=$(echo "scale=2; $P + $SIMPLE_INTEREST" | bc)

echo "-----------------------------------"
echo "Lãi đơn (Simple Interest): $SIMPLE_INTEREST"
echo "Tổng số tiền cuối kỳ: $TOTAL_AMOUNT"
echo "-----------------------------------"
