Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 313B8A5D7C2
	for <lists+jfs-discussion@lfdr.de>; Wed, 12 Mar 2025 09:04:46 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tsH44-0002kJ-9S;
	Wed, 12 Mar 2025 08:03:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wolffd@comp.nus.edu.sg>) id 1tsH3r-0002k3-UA
 for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Mar 2025 08:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RgJ9MVn1ZDiCD6dpQHQCxc25xA/00pK9v/ReT0rqFBw=; b=PiZTfiksfP8o9i1v3N5ICjp0VL
 Nv7N1hws8R2fkOMywHcdBrl9KorKY8kHiY7IiXpY1irGPLj2cLID5lUHnpmb0mS/dCKyUcNesZ2tf
 fzGeaHbTkoDEP3xgtHi7YCFXDPJLJjFwX6k9IzBslI2FrbhguxR0pZN70HY68xNPWnaY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RgJ9MVn1ZDiCD6dpQHQCxc25xA/00pK9v/ReT0rqFBw=; b=WbDlNNdIEYaomBX6B4IO1bVZCh
 QXGGmjDyti34ZBV0Rliejk4qpagEcvj14oniCKv/5G8g5oS4a0kJJ6V4tuo0ueyAONr3DBdS128If
 1vUmjguq4hNX8ZlpOMZanrw0Owjhxm3dVit6OZyAaGeuoFvxYJePA8eTEib35BwRNVDU=;
Received: from 84-20.comp.nus.edu.sg ([137.132.84.20]
 helo=smtpgw-1-2.nogo.comp.nus.edu.sg)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tsH3n-0002mQ-Mr for jfs-discussion@lists.sourceforge.net;
 Wed, 12 Mar 2025 08:03:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTP id B2EDF1606ED
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Mar 2025 16:03:15 +0800 (+08)
X-Virus-Scanned: Debian amavisd-new at smtpgw-1-2.comp.nus.edu.sg
Received: from smtpgw-1-2.nogo.comp.nus.edu.sg ([127.0.0.1])
 by localhost (smtpgw-1-2.comp.nus.edu.sg [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QkLgKROlaB6g for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Mar 2025 16:03:15 +0800 (+08)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtpgw-1-2.nogo.comp.nus.edu.sg (Postfix) with ESMTPS
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Mar 2025 16:03:15 +0800 (+08)
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-39126c3469fso2787347f8f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 12 Mar 2025 01:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1741766593; x=1742371393;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=RgJ9MVn1ZDiCD6dpQHQCxc25xA/00pK9v/ReT0rqFBw=;
 b=HkzERKN0xRcdZcJyQd++jDa1/XzoWSIjg8VaopqkJ4Py2t1emDTvDcTKWVOq6k3ztZ
 47y9/OYqhrFa+O9JDqold19a44LJxIe7SLvp+Bzz2RvbXBfzOFVVGaWIqGz2bjnS/l9r
 Lx04q6ldS7ckp9GEMlvLT1U6U9ti41koTG1K96YrlJB8/z7YS0NRzgpPzb2RFyamZS55
 uqVbo2ZcGskP2MJ9cLWtz83TeZWVaLe+5INPPFmP0/lIBr5PkBWTekFd05YFQmOF6Hza
 j7Ay6Sj5AC1Apeam7bW/jkTS3OgIrwBE/T50CYYW51wtLNQepaWfu8VNudzExPqvJlz0
 Ss6g==
X-Gm-Message-State: AOJu0YzyVjxLajvwyX58Y1ThUZEuPu66dbC0gbiqGnKYkEEfOi16QshZ
 2kYwZWDuGW/ivw9DU2Gmn6o2Fh/pWHjLrJeifu/6CsBKfpFtgvoRu6DIHTTZE3HF5l3BpaYlKYu
 pCStqkGGhVT8WKZcSuRfogORzt3XrjXVIM1wYFdoL3IY9QXvy8CtqYzEYLOdcQHwNVi7wfmPLuq
 nrqoC13vWtxH9qcnBAX2YHlvdjpKmJXTqpg9KGdINXxJ3eMdqplw==
X-Gm-Gg: ASbGncvX6zcC3y7zM+LchakuIz/LFcvOH52xQ1B/ACadPLUsidZw9tASfNYb+jlGf5+
 7BknyxXL1zULnxOO1Jm3LinXqkI+9L9mS9ir9k5MS020ERxHahyDCUpSy25hCTNvy1p5/OVz5MD
 o=
X-Received: by 2002:a5d:64c5:0:b0:390:fdba:ac7 with SMTP id
 ffacd0b85a97d-3926c78f683mr7006690f8f.51.1741766592647; 
 Wed, 12 Mar 2025 01:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBswwxBkt61fInFIN+2crJHiFOHtDmeeiTykeA+k3ejtaulGXNgAefuFsq5nZ/fSLbNJrFTD6UFi9/AmwPPbU=
X-Received: by 2002:a5d:64c5:0:b0:390:fdba:ac7 with SMTP id
 ffacd0b85a97d-3926c78f683mr7006630f8f.51.1741766591627; Wed, 12 Mar 2025
 01:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAJeEPu++aAiF=ybq+XHEdGad+RsxR8d=tmEe5LxCOnDjWY_OFg@mail.gmail.com>
 <CAJeEPu+0EttQaFYKhGUbn2j=_nLvT-wfdBS0wQjXDkBq962g6g@mail.gmail.com>
 <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
In-Reply-To: <8548e6ad-c21d-481c-b9c5-bd0403ee26c1@oracle.com>
Date: Wed, 12 Mar 2025 16:02:00 +0800
X-Gm-Features: AQ5f1JoY0LHi6ir44pClC7s__0tqkS8pYVqPGO6TWj3-ijmKdL--v9C9Srsz-d8
Message-ID: <CAJeEPu+AgjJD--boaj79Hp-QKskOm2AMqVwor_k+cwqUg_X2BA@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>, Dave Kleikamp <shaggy@kernel.org>
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Thanks Shaggy! I've included a summary with sign-off below.
 Let me know if I am missing anything else! Also, we aren't sure if there
 are security implications for this issue. Is it possible that induced load
 could result in Denial of Service? Could you comment on whether we should
 initiate the process [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [137.132.84.20 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [137.132.84.20 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1tsH3n-0002mQ-Mr
Subject: Re: [Jfs-discussion] General Protection Fault / KASAN:
 null-ptr-deref in jfs_ioc_trim
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
From: Dylan Wolff via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dylan Wolff <wolffd@comp.nus.edu.sg>
Cc: jfs-discussion@lists.sourceforge.net, Jiacheng Xu <stitch@zju.edu.cn>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

VGhhbmtzIFNoYWdneSEKCkkndmUgaW5jbHVkZWQgYSBzdW1tYXJ5IHdpdGggc2lnbi1vZmYgYmVs
b3cuIExldCBtZSBrbm93IGlmIEkgYW0KbWlzc2luZyBhbnl0aGluZyBlbHNlIQoKQWxzbywgd2Ug
YXJlbid0IHN1cmUgaWYgdGhlcmUgYXJlIHNlY3VyaXR5IGltcGxpY2F0aW9ucyBmb3IgdGhpcwpp
c3N1ZS4gSXMgaXQgcG9zc2libGUgdGhhdCBpbmR1Y2VkIGxvYWQgY291bGQgcmVzdWx0IGluIERl
bmlhbCBvZgpTZXJ2aWNlPyBDb3VsZCB5b3UgY29tbWVudCBvbiB3aGV0aGVyIHdlIHNob3VsZCBp
bml0aWF0ZSB0aGUgcHJvY2Vzcwpmb3IgYSBDVkU/CgpUaGFua3MhCkR5bGFuCgpgYGAKWyBTeXpr
YWxsZXIgUmVwb3J0IF0KCk9vcHM6IGdlbmVyYWwgcHJvdGVjdGlvbiBmYXVsdCwgcHJvYmFibHkg
Zm9yIG5vbi1jYW5vbmljYWwgYWRkcmVzcwoweGRmZmZmYzAwMDAwMDAwODc6IDAwMDAgWyMxCktB
U0FOOiBudWxsLXB0ci1kZXJlZiBpbiByYW5nZSBbMHgwMDAwMDAwMDAwMDAwNDM4LTB4MDAwMDAw
MDAwMDAwMDQzZl0KQ1BVOiAyIFVJRDogMCBQSUQ6IDEwNjE0IENvbW06IHN5ei1leGVjdXRvci4w
IE5vdCB0YWludGVkCjYuMTMuMC1yYzYtZ2ZiZmQ2NGQyNWM3YS1kaXJ0eSAjMQpIYXJkd2FyZSBu
YW1lOiBRRU1VIFN0YW5kYXJkIFBDIChpNDQwRlggKyBQSUlYLCAxOTk2KSwgQklPUyAxLjE1LjAt
MSAwNC8wMS8yMDE0ClNjaGVkX2V4dDogc2VyaWFsaXNlIChlbmFibGVkK2FsbCksIHRhc2s6IHJ1
bm5hYmxlX2F0PS0zMG1zClJJUDogMDAxMDpqZnNfaW9jX3RyaW0rMHgzNGIvMHg4ZjAKQ29kZTog
ZTcgZTggNTkgYTQgODcgZmUgNGQgOGIgMjQgMjQgNGQgOGQgYmMgMjQgMzggMDQgMDAgMDAgNDgg
OGQgOTMKOTAgODIgZmUgZmYgNGMgODkgZmYgMzEgZjYKUlNQOiAwMDE4OmZmZmZjOTAwMDU1Zjdj
ZDAgRUZMQUdTOiAwMDAxMDIwNgpSQVg6IDAwMDAwMDAwMDAwMDAwODcgUkJYOiAwMDAwNTg2NmE5
ZTY3ZmY4IFJDWDogMDAwMDAwMDAwMDAwMDAwYQpSRFg6IDAwMDAwMDAwMDAwMDAwMDEgUlNJOiAw
MDAwMDAwMDAwMDAwMDA0IFJESTogMDAwMDAwMDAwMDAwMDAwMQpSQlA6IGRmZmZmYzAwMDAwMDAw
MDAgUjA4OiBmZmZmODg4MDdjMTgwMDAzIFIwOTogMWZmZmYxMTAwZjgzMDAwMApSMTA6IGRmZmZm
YzAwMDAwMDAwMDAgUjExOiBmZmZmZWQxMDBmODMwMDAxIFIxMjogMDAwMDAwMDAwMDAwMDAwMApS
MTM6IDAwMDAwMDAwMDAwMDAwMDAgUjE0OiAwMDAwMDAwMDAwMDAwMDAxIFIxNTogMDAwMDAwMDAw
MDAwMDQzOApGUzogIDAwMDA3ZmU1MjAyMjU2NDAoMDAwMCkgR1M6ZmZmZjg4ODBiN2U4MDAwMCgw
MDAwKSBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCkNTOiAgMDAxMCBEUzogMDAwMCBFUzogMDAwMCBD
UjA6IDAwMDAwMDAwODAwNTAwMzMKQ1IyOiAwMDAwNTU5M2M5MWIyYzg4IENSMzogMDAwMDAwMDE0
OTI3YzAwMCBDUjQ6IDAwMDAwMDAwMDAwMDA2ZjAKRFIwOiAwMDAwMDAwMDAwMDAwMDAwIERSMTog
MDAwMDAwMDAwMDAwMDAwMCBEUjI6IDAwMDAwMDAwMDAwMDAwMDAKRFIzOiAwMDAwMDAwMDAwMDAw
MDAwIERSNjogMDAwMDAwMDBmZmZlMGZmMCBEUjc6IDAwMDAwMDAwMDAwMDA0MDAKQ2FsbCBUcmFj
ZToKPFRBU0s+Cj8gX19kaWVfYm9keSsweDYxLzB4YjAKPyBkaWVfYWRkcisweGIxLzB4ZTAKPyBl
eGNfZ2VuZXJhbF9wcm90ZWN0aW9uKzB4MzMzLzB4NTEwCj8gYXNtX2V4Y19nZW5lcmFsX3Byb3Rl
Y3Rpb24rMHgyNi8weDMwCj8gamZzX2lvY190cmltKzB4MzRiLzB4OGYwCmpmc19pb2N0bCsweDNj
OC8weDRmMAo/IF9fcGZ4X2pmc19pb2N0bCsweDEwLzB4MTAKPyBfX3BmeF9qZnNfaW9jdGwrMHgx
MC8weDEwCl9fc2Vfc3lzX2lvY3RsKzB4MjY5LzB4MzUwCj8gX19wZnhfX19zZV9zeXNfaW9jdGwr
MHgxMC8weDEwCj8gZG9fc3lzY2FsbF82NCsweGZiLzB4MjEwCmRvX3N5c2NhbGxfNjQrMHhlZS8w
eDIxMAo/IHN5c2NhbGxfZXhpdF90b191c2VyX21vZGUrMHgxZTAvMHgzMzAKZW50cnlfU1lTQ0FM
TF82NF9hZnRlcl9od2ZyYW1lKzB4NzcvMHg3ZgpSSVA6IDAwMzM6MHg3ZmU1MWY0OTAzYWQKQ29k
ZTogYzMgZTggYTcgMmIgMDAgMDAgMGYgMWYgODAgMDAgMDAgMDAgMDAgZjMgMGYgMWUgZmEgNDgg
ODkgZjggNDgKODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQKUlNQOiAwMDJiOjAwMDA3ZmU1MjAy
MjUwYzggRUZMQUdTOiAwMDAwMDI0NiBPUklHX1JBWDogMDAwMDAwMDAwMDAwMDAxMApSQVg6IGZm
ZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwN2ZlNTFmNWNiZjgwIFJDWDogMDAwMDdmZTUxZjQ5MDNh
ZApSRFg6IDAwMDAwMDAwMjAwMDA2ODAgUlNJOiAwMDAwMDAwMGMwMTg1ODc5IFJESTogMDAwMDAw
MDAwMDAwMDAwNQpSQlA6IDAwMDAwMDAwMDAwMDAwMDAgUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIw
OTogMDAwMDAwMDAwMDAwMDAwMApSMTA6IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAw
MDAwMjQ2IFIxMjogMDAwMDdmZTUyMDIyNTY0MApSMTM6IDAwMDAwMDAwMDAwMDAwMGUgUjE0OiAw
MDAwN2ZlNTFmNDRmY2EwIFIxNTogMDAwMDdmZTUyMDIxZDAwMAo8L1RBU0s+Ck1vZHVsZXMgbGlu
a2VkIGluOgotLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KUklQOiAwMDEwOmpm
c19pb2NfdHJpbSsweDM0Yi8weDhmMApDb2RlOiBlNyBlOCA1OSBhNCA4NyBmZSA0ZCA4YiAyNCAy
NCA0ZCA4ZCBiYyAyNCAzOCAwNCAwMCAwMCA0OCA4ZCA5Mwo5MCA4MiBmZSBmZiA0YyA4OSBmZiAz
MSBmNgpSU1A6IDAwMTg6ZmZmZmM5MDAwNTVmN2NkMCBFRkxBR1M6IDAwMDEwMjA2ClJBWDogMDAw
MDAwMDAwMDAwMDA4NyBSQlg6IDAwMDA1ODY2YTllNjdmZjggUkNYOiAwMDAwMDAwMDAwMDAwMDBh
ClJEWDogMDAwMDAwMDAwMDAwMDAwMSBSU0k6IDAwMDAwMDAwMDAwMDAwMDQgUkRJOiAwMDAwMDAw
MDAwMDAwMDAxClJCUDogZGZmZmZjMDAwMDAwMDAwMCBSMDg6IGZmZmY4ODgwN2MxODAwMDMgUjA5
OiAxZmZmZjExMDBmODMwMDAwClIxMDogZGZmZmZjMDAwMDAwMDAwMCBSMTE6IGZmZmZlZDEwMGY4
MzAwMDEgUjEyOiAwMDAwMDAwMDAwMDAwMDAwClIxMzogMDAwMDAwMDAwMDAwMDAwMCBSMTQ6IDAw
MDAwMDAwMDAwMDAwMDEgUjE1OiAwMDAwMDAwMDAwMDAwNDM4CkZTOiAgMDAwMDdmZTUyMDIyNTY0
MCgwMDAwKSBHUzpmZmZmODg4MGI3ZTgwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAwMDAK
Q1M6ICAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwpDUjI6IDAw
MDA1NTkzYzkxYjJjODggQ1IzOiAwMDAwMDAwMTQ5MjdjMDAwIENSNDogMDAwMDAwMDAwMDAwMDZm
MApEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERSMjogMDAwMDAw
MDAwMDAwMDAwMApEUjM6IDAwMDAwMDAwMDAwMDAwMDAgRFI2OiAwMDAwMDAwMGZmZmUwZmYwIERS
NzogMDAwMDAwMDAwMDAwMDQwMApLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogRmF0YWwgZXhj
ZXB0aW9uCgpbIEFuYWx5c2lzIF0KCldlIGJlbGlldmUgdGhhdCB3ZSBoYXZlIGZvdW5kIGEgY29u
Y3VycmVuY3kgYnVnIGluIHRoZSBgZnMvamZzYCBtb2R1bGUKdGhhdCByZXN1bHRzIGluIGEgbnVs
bCBwb2ludGVyIGRlcmVmZXJlbmNlLiBUaGVyZSBpcyBhIGNsb3NlbHkgcmVsYXRlZAppc3N1ZSB3
aGljaCBoYXMgYmVlbiBmaXhlZDoKCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPWQ2YzFiMzU5OWIyZmVi
NWM3MjkxZjVhYzNhMzZlNWZhN2NlZGIyMzQKCi4uLiBidXQsIHVuZm9ydHVuYXRlbHksIHRoZSBh
Y2NlcHRlZCBwYXRjaCBhcHBlYXJzIHRvIHN0aWxsIGJlCnN1c2NlcHRpYmxlIHRvIGEgbnVsbCBw
b2ludGVyIGRlcmVmZXJlbmNlIHVuZGVyIHNvbWUgaW50ZXJsZWF2aW5ncy4KClRvIHRyaWdnZXIg
dGhlIGJ1Zywgd2UgdGhpbmsgdGhhdCBgSkZTX1NCSShpcGJtYXAtPmlfc2IpLT5ibWFwYCBpcyBz
ZXQKdG8gTlVMTCBpbiBgZGJGcmVlQml0c2AgYW5kIHRoZW4gZGVyZWZlcmVuY2VkIGluIGBqZnNf
aW9jX3RyaW1gLiBUaGlzCmJ1ZyBtYW5pZmVzdHMgcXVpdGUgcmFyZWx5IHVuZGVyIG5vcm1hbCBj
aXJjdW1zdGFuY2VzLCBidXQgaXMKdHJpZ2dlcmVhYmxlIGZyb20gYSBzeXotcHJvZ3JhbS4KClJl
cG9ydGVkLWFuZC10ZXN0ZWQtYnk6IER5bGFuIEouIFdvbGZmPHdvbGZmZEBjb21wLm51cy5lZHUu
c2c+ClJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IEppYWNoZW5nIFh1IDxzdGl0Y2hAemp1LmVkdS5j
bj4KU2lnbmVkLW9mZi1ieTogRHlsYW4gSi4gV29sZmY8d29sZmZkQGNvbXAubnVzLmVkdS5zZz4K
U2lnbmVkLW9mZi1ieTogSmlhY2hlbmcgWHUgPHN0aXRjaEB6anUuZWR1LmNuPgotLS0KIGZzL2pm
cy9qZnNfZGlzY2FyZC5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19kaXNjYXJkLmMgYi9mcy9q
ZnMvamZzX2Rpc2NhcmQuYwppbmRleCA1ZjRiMzA1MDMuLjRiNjYwMjk2YyAxMDA2NDQKLS0tIGEv
ZnMvamZzL2pmc19kaXNjYXJkLmMKKysrIGIvZnMvamZzL2pmc19kaXNjYXJkLmMKQEAgLTg2LDcg
Kzg2LDggQEAgaW50IGpmc19pb2NfdHJpbShzdHJ1Y3QgaW5vZGUgKmlwLCBzdHJ1Y3QgZnN0cmlt
X3JhbmdlICpyYW5nZSkKICAgICAgICBkb3duX3JlYWQoJnNiLT5zX3Vtb3VudCk7CiAgICAgICAg
Ym1wID0gSkZTX1NCSShpcC0+aV9zYiktPmJtYXA7CgotICAgICAgIGlmIChtaW5sZW4gPiBibXAt
PmRiX2Fnc2l6ZSB8fAorICAgICAgIGlmIChibXAgPT0gTlVMTCB8fAorICAgICAgICAgICBtaW5s
ZW4gPiBibXAtPmRiX2Fnc2l6ZSB8fAogICAgICAgICAgICBzdGFydCA+PSBibXAtPmRiX21hcHNp
emUgfHwKICAgICAgICAgICAgcmFuZ2UtPmxlbiA8IHNiLT5zX2Jsb2Nrc2l6ZSkgewogICAgICAg
ICAgICAgICAgdXBfcmVhZCgmc2ItPnNfdW1vdW50KTsKYGBgCgoKT24gVHVlLCBNYXIgMTEsIDIw
MjUgYXQgMTE6NDjigK9QTSBEYXZlIEtsZWlrYW1wIDxkYXZlLmtsZWlrYW1wQG9yYWNsZS5jb20+
IHdyb3RlOgo+Cj4gT24gMy8xMS8yNSAxOjQ3QU0sIER5bGFuIFdvbGZmIHdyb3RlOgo+Cj4gSGkg
YWxsLAo+Cj4gSnVzdCBjaGVja2luZyBpbiBvbiB0aGlzIHJlcG9ydC4gSXMgdGhlcmUgYW5vdGhl
ciBlbWFpbCBsaXN0IEkgc2hvdWxkIGJlIHVzaW5nIGZvciB0aGlzIGlzc3VlPyBDYW4gYW55b25l
IGNvbmZpcm0gd2hldGhlciBvciBub3Qgb3VyIGZpeCBpcyBhY2NlcHRhYmxlPwo+Cj4gVGhpcyBp
cyB0aGUgcmlnaHQgbGlzdC4gU29tZWhvdyBJIG1pc3NlZCB0aGlzIG9uZSBhbmQvb3IgZm9yZ290
IGl0Lgo+Cj4gVGhlIHBhdGNoIGxvb2tzIGdvb2QgdG8gbWUuIENhbiB5b3UgcmUtc2VuZCBpdCB3
aXRoIGEgU2lnbmVkLW9mZi1ieTogPwo+Cj4gVGhhbmsgeW91IQo+Cj4gU2hhZ2d5Cj4KPgo+IFRo
YW5rcyBhZ2FpbiEKPiBEeWxhbgo+Cj4gT24gVHVlLCBKYW4gNywgMjAyNSBhdCA0OjUz4oCvUE0g
RHlsYW4gV29sZmYgPHdvbGZmZEBjb21wLm51cy5lZHUuc2c+IHdyb3RlOgo+Pgo+PiBIZWxsbyBr
ZXJuZWwgZGV2ZWxvcGVycyEKPj4KPj4gV2UgYmVsaWV2ZSB0aGF0IHdlIGhhdmUgZm91bmQgYSBj
b25jdXJyZW5jeSBidWcgaW4gdGhlIGBmcy9qZnNgIG1vZHVsZSB0aGF0IHJlc3VsdHMgaW4gYSBu
dWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UuIFRoZXJlIGlzIGEgY2xvc2VseSByZWxhdGVkIGlzc3Vl
IHdoaWNoIGhhcyBiZWVuIGZpeGVkOgo+Pgo+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD1kNmMxYjM1
OTliMmZlYjVjNzI5MWY1YWMzYTM2ZTVmYTdjZWRiMjM0Cj4+Cj4+IC4uLiBidXQsIHVuZm9ydHVu
YXRlbHksIHRoZSBhY2NlcHRlZCBwYXRjaCBhcHBlYXJzIHRvIHN0aWxsIGJlIHN1c2NlcHRpYmxl
IHRvIGEgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIHVuZGVyIHNvbWUgaW50ZXJsZWF2aW5ncy4K
Pj4KPj4gVG8gdHJpZ2dlciB0aGUgYnVnLCB3ZSB0aGluayB0aGF0IGBKRlNfU0JJKGlwYm1hcC0+
aV9zYiktPmJtYXBgIGlzIHNldCB0byBOVUxMIGluIGBkYkZyZWVCaXRzYCBhbmQgdGhlbiBkZXJl
ZmVyZW5jZWQgaW4gYGpmc19pb2NfdHJpbWAuIFRoaXMgYnVnIG1hbmlmZXN0cyBxdWl0ZSByYXJl
bHkgdW5kZXIgbm9ybWFsIGNpcmN1bXN0YW5jZXMsIGJ1dCBpcyB0cmlnZ2VyZWFibGUgd2l0aCB0
aGUgYXR0YWNoZWQgc3l6IHByb2dyYW0uIFdlJ3ZlIGFsc28gYXR0YWNoZWQgYSB0cmFjZSBvZiBh
biBleGVjdXRpb24gdGhhdCBsZWFkcyB0byB0aGUgY3Jhc2ggKHRocmVhZCBpZDpsb2NhdGlvbiku
IElmIG5lZWRlZCwgd2UgY2FuIHNoYXJlIG91ciBzZXR1cCBpbiBkZXRhaWwgd2hpY2ggcmVwcm9k
dWNlcyB0aGUgYnVnIHdpdGggdmVyeSBoaWdoIHByb2JhYmlsaXR5Lgo+Pgo+PiBIZXJlJ3MgYSBw
cm9wb3NlZCBwYXRjaDoKPj4KPj4gYGBgCj4+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX2Rpc2Nh
cmQuYyBiL2ZzL2pmcy9qZnNfZGlzY2FyZC5jCj4+IGluZGV4IDVmNGIzMDUwMy4uNGI2NjAyOTZj
IDEwMDY0NAo+PiAtLS0gYS9mcy9qZnMvamZzX2Rpc2NhcmQuYwo+PiArKysgYi9mcy9qZnMvamZz
X2Rpc2NhcmQuYwo+PiBAQCAtODYsNyArODYsOCBAQCBpbnQgamZzX2lvY190cmltKHN0cnVjdCBp
bm9kZSAqaXAsIHN0cnVjdCBmc3RyaW1fcmFuZ2UgKnJhbmdlKQo+PiAgICAgICAgIGRvd25fcmVh
ZCgmc2ItPnNfdW1vdW50KTsKPj4gICAgICAgICBibXAgPSBKRlNfU0JJKGlwLT5pX3NiKS0+Ym1h
cDsKPj4KPj4gLSAgICAgICBpZiAobWlubGVuID4gYm1wLT5kYl9hZ3NpemUgfHwKPj4gKyAgICAg
ICBpZiAoYm1wID09IE5VTEwgfHwKPj4gKyAgICAgICAgICAgbWlubGVuID4gYm1wLT5kYl9hZ3Np
emUgfHwKPj4gICAgICAgICAgICAgc3RhcnQgPj0gYm1wLT5kYl9tYXBzaXplIHx8Cj4+ICAgICAg
ICAgICAgIHJhbmdlLT5sZW4gPCBzYi0+c19ibG9ja3NpemUpIHsKPj4gICAgICAgICAgICAgICAg
IHVwX3JlYWQoJnNiLT5zX3Vtb3VudCk7Cj4+IGBgYAo+Pgo+PiBBcHBseWluZyB0aGlzIHBhdGNo
IHRvIG91ciBrZXJuZWwgbG9jYWxseSBhcHBlYXJzIHRvIHJlc29sdmUgdGhlIGlzc3VlLgo+Pgo+
PiBJZiB0aGlzIGxvb2tzIGxpa2UgaXQgbWlnaHQgYmUgYSBzZWN1cml0eSB2dWxuZXJhYmlsaXR5
LCBwbGVhc2UgbGV0IHVzIGtub3cgaWYgdGhlcmUgaXMgYW55dGhpbmcgd2UgbmVlZCB0byBwcm92
aWRlIGZvciB0aGUgQ1ZFIHByb2Nlc3MuCj4+Cj4+IFdlIHdvdWxkIGFsc28gYXBwcmVjaWF0ZSBh
dHRyaWJ1dGlvbiBmb3IgdGhlIGRpc2NvdmVyeSAvIGZpeCBpZiBhcHBsaWNhYmxlOgo+PiA+UmVw
b3J0ZWQtYnk6IEppYWNoZW5nIFh1PHN0aXRjaEB6anUuZWR1LmNuPiwgIER5bGFuIFdvbGZmIDx3
b2xmZmRAY29tcC5udXMuZWR1LnNnPgo+Pgo+PiBFbnZpcm9ubWVudDoKPj4gICAgICBRZW11IChp
bnZvY2F0aW9uIGF0dGFjaGVkKSBydW5uaW5nIGEgU3l6a2FsbGVyIGltYWdlIG9uIGFuIFVidW50
dSAyMi4wNC40IExUUyBob3N0Cj4+IEtlcm5lbDoKPj4gICAgICBIRUFEIGNvbW1pdDogZmJmZDY0
ZDI1Cj4+ICAgICAgdHJlZTogdXBzdHJlYW0KPj4gICAgICBjb21waWxlciB0b29sY2hhaW46IGNs
YW5nLTE3Cj4+Cj4+IFRoYW5rcyEKPj4gRHlsYW4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZz
LWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
