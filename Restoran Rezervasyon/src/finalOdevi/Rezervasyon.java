/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package finalOdevi;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author DUMAN
 */
public class Rezervasyon {
    private int rezervasyonID;
    private String musteriAd;
    private String musteriSoyad;
    private int masaID;
    private String rezervasyonTarihi;
    private String rezervasyonSaati;
    private String durum;
    private String telefon;
    
    public Rezervasyon(int rezervasyonID, String musteri_ad, String musteri_soyad,String musteri_telefon, int masaID, String rezervasyonTarihi, String rezervasyonSaati, String durum){
        this.setRezervasyonID(rezervasyonID);
        this.setMusteriAd(musteri_ad);
        this.setMusteriSoyad(musteri_soyad);
        this.setTelefon(musteri_telefon);
        this.setMasaID(masaID);
        this.setRezervasyonTarihi(rezervasyonTarihi);
        this.setRezervasyonSaati(rezervasyonSaati);
        this.setDurum(durum);
    }

    public int getRezervasyonID() {
        return rezervasyonID;
    }

    public void setRezervasyonID(int rezervasyonID) {
        this.rezervasyonID = rezervasyonID;
    }

    public String getMusteriAd() {
        return musteriAd;
    }

    public void setMusteriAd(String musteriAd) {
        this.musteriAd = musteriAd;
    }

    public String getMusteriSoyad() {
        return musteriSoyad;
    }

    public void setMusteriSoyad(String musteriSoyad) {
        this.musteriSoyad = musteriSoyad;
    }

    public int getMasaID() {
        return masaID;
    }

    public void setMasaID(int masaID) {
        this.masaID = masaID;
    }

    public String getRezervasyonTarihi() {
        return rezervasyonTarihi;
    }

    public void setRezervasyonTarihi(String rezervasyonTarihi) {
        this.rezervasyonTarihi = rezervasyonTarihi;
    }

    public String getRezervasyonSaati() {
        return rezervasyonSaati;
    }

    public void setRezervasyonSaati(String rezervasyonSaati) {
        this.rezervasyonSaati = rezervasyonSaati;
    }

    public String getDurum() {
        return durum;
    }

    public void setDurum(String durum) {
        this.durum = durum;
    }
    
    public String getTelefon() {
        return telefon;
    }

    public void setTelefon(String telefon) {
        this.telefon = telefon;
    }

}


