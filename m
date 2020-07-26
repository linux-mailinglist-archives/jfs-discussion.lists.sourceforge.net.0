Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ED00A22DF6A
	for <lists+jfs-discussion@lfdr.de>; Sun, 26 Jul 2020 15:00:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1jzgGE-0002pN-M6; Sun, 26 Jul 2020 13:00:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jernej's-sflist@eternallybored.org>)
 id 1jzgGD-0002pC-6U
 for jfs-discussion@lists.sourceforge.net; Sun, 26 Jul 2020 13:00:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:Message-ID:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uOha0PBAdyAojxr8XNzcZeF1VwAdN9WaeoXUDPud048=; b=dH8j1I7XNt7fgdVIp4YiZTpOeN
 DdrgxY+CVEvu589QNLWh/wVCuGsK9nCRpUttPlVl7IuC9dO+tr4RYmhtnlFMAC2OU7TbXeMcUsMKG
 W/1GFBOLznfiwa4wV+eS2z107fZdCa5Rp1awnsk2DBEnXPBOYHERYnRa51lz0/HwQPo4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:Message-ID
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uOha0PBAdyAojxr8XNzcZeF1VwAdN9WaeoXUDPud048=; b=l
 oZhv3gPbR6rcFJU8FcqA88NW7AF4OUPTOrITwBm1kj2wpOscyGKc5Jfn7SVQVGw6hPwt8Uh5eqNdK
 3EDJLECBX8N7RjcI/Zjzsc05CyFqru6CWXj339yFe41YbJ6pqKmHDuO/nwwQlzrgfRP5DpspCPB1b
 jGvudZ4FbpN8v9u8=;
Received: from m0.konto.si ([93.103.81.110])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jzgG8-0007Hr-Cr
 for jfs-discussion@lists.sourceforge.net; Sun, 26 Jul 2020 13:00:13 +0000
Received: from localhost (postar.konto.si [127.0.0.1])
 by m0.konto.si (Postfix) with ESMTP id 60869F200189
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 14:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 eternallybored.org; h=content-transfer-encoding:content-type
 :content-type:mime-version:subject:subject:message-id
 :organization:x-mailer:from:from:date:date:received:received; s=
 k1; t=1595767435; x=1597581836; bh=7/L3899JMswNII4IAmVWXhmkII9jX
 /OYK+Mlw/OIwQI=; b=g+YGjUURlyxuvwWmhd8lQYie49ts/cgQlf1+EL76pYWEV
 VaxxOlk8mNICX3aokN0qsfsxN+O9MBckjn3PQ0XjE5m0nbg7YJB5qkccMKmlSJn7
 /19JlzNBpL7MUPOh6BYRB4jsnPeUCwsoXBtsV2hDBiy7CYcJK6dioaE10WUphjjz
 RiYB+9Rte2hXrHeppUa5kOeM0/4fzuWbx1J2Nd/FjlnWw9+GrQZS3Ypa/YTgl5eU
 kGWDl7vHACX8tPVR4GGRE92kTTsNhYDnCVW2TkWlY1VIQvtBWTKkHmszwmaHiAcp
 gwV6aI/MvmoGAZVdYY9WRNx/kmZ5iK2p/HN/YaJYw==
X-Virus-Scanned: amavisd-new (outgoing)
Received: from m0.konto.si ([127.0.0.1])
 by localhost (postar.konto.si [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Smh4N5vXBMka for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 14:43:55 +0200 (CEST)
Received: from HACTAR.yggdrasil.local (unknown
 [IPv6:2a01:260:4094:1:9565:7211:234f:f848])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by m0.konto.si (Postfix) with ESMTPSA id 383AFF26A700
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 26 Jul 2020 14:43:55 +0200 (CEST)
Date: Sun, 26 Jul 2020 14:43:54 +0200
From: =?utf-8?Q?Jernej_Simon=C4=8Dic=CC=8C?=
 <jernej's-sflist@eternallybored.org>
X-Mailer: The Bat! (v9.2.2.1 (BETA)) Professional
Organization: E-mailaholics International
Message-ID: <833415339.20200726144354@eternallybored.org>
To: jfs-discussion@lists.sourceforge.net
X-Face: *BXrgB!?f3c"BwmeN:<Q~Z[5F-qZK~t;
 k]KluGog=8Wl6qa@Rhn=(<OL//@Zo*+3C1opTjt
 7l,QM>=h6[k:#^'6]0MuPu-@By.:}Io=wJ\]<V4L,<C`FM}a7R2oNq@Q8jY8`s)2^~@4o:FM>}W1N>
 n:~ixb-b:#nOD2|Eut%&
MIME-Version: 1.0
X-Spam-Score: 0.7 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.8 APOSTROPHE_FROM        From address contains an apostrophe
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: eternallybored.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jzgG8-0007Hr-Cr
Subject: [Jfs-discussion] fsck.jfs segfaults
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

QWZ0ZXIgSSByZWJvb3RlZCBteSBzZXJ2ZXIsIG9uZSBvZiB0aGUgdm9sdW1lcyBmYWlsZWQgdG8g
bW91bnQsIGFuZAp3aGVuIEkgcnVuIGZzY2suamZzIG9uIGl0LCBpdCBzZWdmYXVsdHM6CgojIGZz
Y2suamZzIC12IC9kZXYvbG9vcDEyCmZzY2suamZzIHZlcnNpb24gMS4xLjE1LCAwNC1NYXItMjAx
MQpwcm9jZXNzaW5nIHN0YXJ0ZWQ6IDcvMjYvMjAyMCAxNDozNzoyNwpVc2luZyBkZWZhdWx0IHBh
cmFtZXRlcjogLXAKVGhlIGN1cnJlbnQgZGV2aWNlIGlzOiAgL2Rldi9sb29wMTIKT3BlbiguLi5S
RUFEL1dSSVRFIEVYQ0xVU0lWRS4uLikgcmV0dXJuZWQgcmMgPSAwClByaW1hcnkgc3VwZXJibG9j
ayBpcyB2YWxpZC4KVGhlIHR5cGUgb2YgZmlsZSBzeXN0ZW0gZm9yIHRoZSBkZXZpY2UgaXMgSkZT
LgpCbG9jayBzaXplIGluIGJ5dGVzOiAgNDA5NgpGaWxlc3lzdGVtIHNpemUgaW4gYmxvY2tzOiAg
NDM5NDUyOTc5MgoqKlBoYXNlIDAgLSBSZXBsYXkgSm91cm5hbCBMb2cKTE9HUkVETzogIExvZyBy
ZWNvcmQgZm9yIFN5bmMgUG9pbnQgYXQ6ICAgIDB4MDFhODIzZjAKTE9HUkVETzogIEJlZ2lubmlu
ZyB0byB1cGRhdGUgdGhlIElub2RlIEFsbG9jYXRpb24gTWFwLgpMT0dSRURPOiAgRXJyb3IgZm9y
IHBtYXAgYW5kIGlub2V4dCB3aGVuIHJlYnVpbGRpbmcgdGhlIElub2RlIEFsbG9jYXRpb24gTWFw
ICgxKS4KW15yZXBlYXRzIDUyIHRpbWVzXQpMT0dSRURPOiAgRG9uZSB1cGRhdGluZyB0aGUgSW5v
ZGUgQWxsb2NhdGlvbiBNYXAuCkxPR1JFRE86ICBCZWdpbm5pbmcgdG8gdXBkYXRlIHRoZSBCbG9j
ayBNYXAuClNlZ21lbnRhdGlvbiBmYXVsdAoKVGhpcyBpcyBvbiBHZW50b28geDg2XzY0LCBidXQg
dGhlIHNlZ2ZhdWx0IGFsc28gaGFwcGVucyBpZiBJIGJvb3QKMzItYml0IHN5c3Jlc2NjZC5vcmcu
IEFueSBpZGVhcyBvbiBob3cgdG8gcHJvY2VlZD8gSSBjYW4gcHJvdmlkZSB0aGUKY29yZSBmaWxl
IGlmIG5lZWRlZC4KCi0tIAo8IEplcm5laiBTaW1vbsSNacSNID48Pjw+PD48Pjw+PD48Pjw+PD48
Pjw+PCBodHRwczovL2V0ZXJuYWxseWJvcmVkLm9yZy8gPgoKICAgICAgICAgICBCZWNhdXNlIDEw
IGJpbGxpb24geWVhcnMnIHRpbWUgaXMgc28gZnJhZ2lsZSwgc28gZXBoZW1lcmFsLi4uCml0IGFy
b3VzZXMgc3VjaCBhIGJpdHRlcnN3ZWV0LCBhbG1vc3QgaGVhcnRicmVha2luZyBmb25kbmVzcy4K
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vz
c2lvbgo=
