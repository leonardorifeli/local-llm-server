#!/bin/bash

IFACE="wlp1s0"
SSID="SSID"
PASSWORD="PASS"
IP_FIXO="192.168.18.96/24"
GATEWAY="192.168.18.1"
DNS="192.168.18.1"
CON_NAME="NetworkManagerName"

echo "Criando conexão $CON_NAME..."
nmcli con add type wifi ifname "$IFACE" con-name "$CON_NAME" autoconnect yes ssid "$SSID"
nmcli con modify "$CON_NAME" wifi-sec.key-mgmt wpa-psk
nmcli con modify "$CON_NAME" wifi-sec.psk "$PASSWORD"
nmcli con modify "$CON_NAME" ipv4.addresses "$IP_FIXO"
nmcli con modify "$CON_NAME" ipv4.gateway "$GATEWAY"
nmcli con modify "$CON_NAME" ipv4.dns "$DNS"
nmcli con modify "$CON_NAME" ipv4.method manual
echo "Ativando conexão $CON_NAME..."
nmcli con up "$CON_NAME"

echo "✅ Wi-Fi configurado com IP fixo: $IP_FIXO"
