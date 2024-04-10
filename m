Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD838A00CE
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Apr 2024 21:47:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rudum-0000mC-QT;
	Wed, 10 Apr 2024 19:47:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dtiwari@cs.stonybrook.edu>) id 1ruduj-0000m4-Vn
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 19:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+qYp6FwjoLyn7nHecO4se2yRXmWHmNIdEDWpmOEjXt0=; b=dRb6G+VyYY3AsqLx7xLR4ZN1EZ
 PAjrqqxfOqTV+Makd/6Kpxgm4e4del+a2Cv5MOcyVsZGyorGtuq7QOmCq8FCztoGh4OzIqm6rvxKK
 bzfC/AwtYEzNlI4eUVUN9X5scCjpJ4+sJBxLDXnC8OfGL2XcfS1f9FlqyO78FgNONkgs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+qYp6FwjoLyn7nHecO4se2yRXmWHmNIdEDWpmOEjXt0=; b=j
 QCqU+SK2Js2V5a+hHWyK2fXBJVVTmYrskmrsWL6m9uoVUyUjK/scHyr8wAe/7xEGaQWjmrLsS4yKk
 BtfSsM7UT7l0VEKtGGUluSl22lDOVtX0axKw8K+RTolgr3xZk/iuksyaIE3+rvyde4/0oLCPWIxO3
 fn5w0kfnaTkz4o8I=;
Received: from mail-pf1-f181.google.com ([209.85.210.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rudui-000402-UY for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Apr 2024 19:47:22 +0000
Received: by mail-pf1-f181.google.com with SMTP id
 d2e1a72fcca58-6ecf3943040so5105679b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 10 Apr 2024 12:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs-stonybrook-edu.20230601.gappssmtp.com; s=20230601; t=1712778435;
 x=1713383235; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+qYp6FwjoLyn7nHecO4se2yRXmWHmNIdEDWpmOEjXt0=;
 b=hiBjKEUb/6EEsxLN16JJ0mp9I2oSZ8Fosa8nLStW6zcNCv5zt3CR6JCC3STlVfw5cM
 I7B0ZNaLs5b/KGvqyUZLAqgGhWxWF2rK/eg2ichAaHY56wU6ujgr07mLtiH9KJ49HzJq
 hXreTtH4bYCM0SQJJe4xZYXk7rst3pGQjXLsXXEcipFMANgZEGu5l9/IIPqAzhINL9re
 C7+dk2Txw+POlTUpwgY/9JnDf59vWHhiTjhliEWOitvN1bjJFR+oAS8q1stX3Ej0KgMw
 P8VOTih0WWqkFS1oR06WJwMcJfSK9PF44fYobTY9EupKoHnZnruSLmjrT8Cf4za2N706
 BFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712778435; x=1713383235;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+qYp6FwjoLyn7nHecO4se2yRXmWHmNIdEDWpmOEjXt0=;
 b=pm+PZQlsxU1qnwIdp/eRULJTOmctRl1fVIjqG+vzN887ikStn+k0S1CUI+Vb0iWqsn
 Euoszu/DLm8I1s0+AhLZxK06a4GqDBHqaJKPH34IJmq2uyf8sy8xaynHu+Xru1PFHHzT
 jVGOjcY8Rw/Lcw1aFRpjcFaihlDxslzg+Hpnxb8VmvCPyHu19j7/VNzaN6gBJVE4KM6X
 BFKGjdjd2VR5FzUUT9q0OoN8msjmlfgYOuvQtbbxWjaW7hQq4gOgFD06GOomPlydTXrO
 Zhktyt/Zsg5hcvBPNKNSnJoWa7PdrmhQkmC9b9WXUnvx9UYJwHAvOf5O7m7r44NzDYaj
 bVVQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTXlvCXrlSOdV8/eqM3uZv44ASFD0d6eX+178oW3vIJ0Ef+Wx+USbm2zGNXWdHMI6AGRc52Ctqc6KiVxTRAR9s2ZYxaByOzxlShX23oMX/gipaNZA=
X-Gm-Message-State: AOJu0Yz14/yEQKEEjn5qfVNCfEQSU+/uPStaiApvP0aMVr7aq+AVv9ge
 MmkOy5sdhMsKo30ARzg8XymlmMjNRCX4iXtKK4PWAhOJTE4QrIIspkAhINOlq3Hkcit3joLWDp8
 f8OeRlQ==
X-Google-Smtp-Source: AGHT+IF2Q7Q19g/35jZpQF06W4+QlXiQW/wgqsuDGztGBAXaCggmXtwmqU16QJ8IlGGr5uz8KXgfQw==
X-Received: by 2002:a05:620a:171e:b0:78e:bd77:b8f with SMTP id
 az30-20020a05620a171e00b0078ebd770b8fmr1512800qkb.14.1712774985570; 
 Wed, 10 Apr 2024 11:49:45 -0700 (PDT)
Received: from dhcp206.fsl.cs.sunysb.edu (dhcp206.fsl.cs.sunysb.edu.
 [130.245.126.206]) by smtp.gmail.com with ESMTPSA id
 w2-20020ae9e502000000b00789f3c50914sm5571956qkf.33.2024.04.10.11.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Apr 2024 11:49:45 -0700 (PDT)
To: shaggy@kernel.org, dave.kleikamp@oracle.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 brauner@kernel.org, jack@suse.cz, axboe@kernel.dk, jinpu.wang@ionos.com,
 dchinner@redhat.com, lizhi.xu@windriver.com, johannes.thumshirn@wdc.com
Date: Wed, 10 Apr 2024 14:48:55 -0400
Message-Id: <20240410184857.42754-1-dtiwari@cs.stonybrook.edu>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In the jfs_logmgr.c file, within lmLogOpen() under the “free”
    label, mutex_unlock(&jfs_log_mutex) is called before kfree(log). Through
   our model-checking tool Metis, we found that this is one of t [...] 
 
 Content analysis details:   (-5.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [209.85.210.181 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.210.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rudui-000402-UY
Subject: [Jfs-discussion] [PATCH] fs/jfs: fix order of kfree() and
 mutex_unlock() within lmLogOpen() in jfs_logmgr.c
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
From: Divyaank Tiwari via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Divyaank Tiwari <dtiwari@cs.stonybrook.edu>
Cc: Yifei Liu <yifeliu@cs.stonybrook.edu>, Erez Zadok <ezk@cs.stonybrook.edu>,
 Scott Smolka <sas@cs.stonybrook.edu>, Geoff Kuenning <geoff@cs.hmc.edu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SW4gdGhlIGpmc19sb2dtZ3IuYyBmaWxlLCB3aXRoaW4gbG1Mb2dPcGVuKCkgdW5kZXIgdGhlIOKA
nGZyZWXigJ0gbGFiZWwsCm11dGV4X3VubG9jaygmamZzX2xvZ19tdXRleCkgaXMgY2FsbGVkIGJl
Zm9yZSBrZnJlZShsb2cpLiBUaHJvdWdoIG91cgptb2RlbC1jaGVja2luZyB0b29sIE1ldGlzLCB3
ZSBmb3VuZCB0aGF0IHRoaXMgaXMgb25lIG9mIHRoZSBwb3RlbnRpYWwKY2F1c2VzIGZvciBub25k
ZXRlcm1pbmlzdGljIGtlcm5lbC1oYW5nIGJ1Z3MgaW4gSkZTLiBTcGVjaWZpY2FsbHksIHRoaXMK
aW5kaXJlY3RseSByZXN1bHRzIGluIHRoZSDigJxsb2figJ0gdmFyaWFibGUgYmVpbmcgTlVMTCBk
ZXJlZmVyZW5jZWQgaW4gdGhlCmZ1bmN0aW9uIHR4RW5kKCkgaW4gamZzX3R4bm1nci5jLgoKRml4
OiBTd2FwIHRoZSBvcmRlciBvZiBtdXRleF91bmxvY2soJmpmc19sb2dfbXV0ZXgpIGFuZCBrZnJl
ZShsb2cpLgoKV2UgY2hlY2tlZCB0aGUgZW50aXJlIEpGUyBjb2RlYmFzZSwgZXNwZWNpYWxseSB0
aGUgZmlsZSBqZnNfbG9nbWdyLmMgd2hlcmUKbG9nIGlzIGFsbG9jYXRlZCBhbmQga2ZyZWXigJlk
IG11bHRpcGxlIHRpbWVzLCBhbmQgZm91bmQgdGhhdCBldmVyeSB0aW1lLApleGNlcHQgdGhpcyBi
dWdneSBjYXNlLCBhIGNhbGwgdG8ga2ZyZWUoKSB3YXMgZm9sbG93ZWQgYnkgYSBtdXRleF91bmxv
Y2soKS4KVGhpcyBlbnN1cmVzIHRoYXQgYW55IHNoYXJlZCBsb2cgcmVzb3VyY2VzIGFyZSBwcm90
ZWN0ZWQgYnkgdGhlCmpmc19sb2dfbXV0ZXggbG9jay4KClRoZSBzbWFsbCBwYXRjaCBnaXZlbiBi
ZWxvdyBmaXhlcyB0aGlzIGJ1ZyBhbmQgd2UgYXJlIHJlYXNvbmFibHkgY2VydGFpbgp0aGF0IGl0
IGlzIHRoZSBjb3JyZWN0IGZpeC4gIEJlZm9yZSB0aGlzIGZpeCwgd2Ugd2VyZSBhYmxlIHRvIHRy
aWdnZXIgdGhlCmtlcm5lbCBoYW5nIGJ1ZyBmYWlybHkgcXVpY2tseSB0aHJvdWdoIE1ldGlzLiBU
aHJvdWdoIG11bHRpcGxlIGV4cGVyaW1lbnRzLAp3ZSBmb3VuZCB0aGF0IHdlIHdlcmUgYWJsZSB0
byBjYXVzZSB0aGUga2VybmVsIHRvIGhhbmcgbW9zdGx5IHdpdGhpbiBhIGZldwptaW51dGVzIG9m
IGV4ZWN1dGlvbi4gV2hpbGUgd2UgYXJlIGZhaXJseSBjZXJ0YWluIHRoYXQgdGhlIHBhdGNoIGJl
bG93CmZpeGVzICphKiBidWcsIHdlIGJlbGlldmUgdGhlcmXigJlzIGFub3RoZXIgcmFjZS9idWcg
c29tZXdoZXJlIGVsc2UgdGhhdCB3ZQpoYXZlIHlldCB0byBpZGVudGlmeS4gIFdpdGggdGhpcyBz
bWFsbCBmaXgsIHdoZW4gd2UgcnVuIE1ldGlzLCB3ZSBjYW4gc3RpbGwKdHJpZ2dlciBhIE5VTEwg
cHRyIGRlcmVmIG9mIOKAnGxvZ+KAnSBpbiBmdW5jdGlvbiB0eEVuZCgpIGluIGpmc190eG5tZ3Iu
YywKYnV0IG5vdyBpdCB0YWtlcyBhbnl3aGVyZSBmcm9tIDYgdG8gMTM3IGhvdXJzIChhbG1vc3Qg
NiBkYXlzKS4gV2UgYXJlCmhvcGluZyB0aGF0IHRoaXMgZml4IHdpbGwgYWxzbyBoZWxwIHNvbWUg
b2YgdGhlIEpGUyBtYWludGFpbmVycyBpZGVudGlmeQpvdGhlciBwb3RlbnRpYWwgcmFjZXMuCgpO
b3RlOiBBbGwgb2Ygb3VyIGV4cGVyaW1lbnRzIHdlcmUgcGVyZm9ybWVkIG9uIExpbnV4IGtlcm5l
bCB2Ni42LjEuCgpTaWduZWQtb2ZmLWJ5OiBEaXZ5YWFuayBUaXdhcmkgPGR0aXdhcmlAY3Muc3Rv
bnlicm9vay5lZHU+ClNpZ25lZC1vZmYtYnk6IFlpZmVpIExpdSA8eWlmZWxpdUBjcy5zdG9ueWJy
b29rLmVkdT4KU2lnbmVkLW9mZi1ieTogRXJleiBaYWRvayA8ZXprQGNzLnN0b255YnJvb2suZWR1
PgpTaWduZWQtb2ZmLWJ5OiBTY290dCBTbW9sa2EgPHNhc0Bjcy5zdG9ueWJyb29rLmVkdT4KU2ln
bmVkLW9mZi1ieTogR2VvZmYgS3Vlbm5pbmcgPGdlb2ZmQGNzLmhtYy5lZHU+Ci0tLQogZnMvamZz
L2pmc19sb2dtZ3IuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfbG9nbWdyLmMgYi9mcy9qZnMvamZz
X2xvZ21nci5jCmluZGV4IDk2MDkzNDllOTJlNS4uY2U5YWY0ZWYxZTQxIDEwMDY0NAotLS0gYS9m
cy9qZnMvamZzX2xvZ21nci5jCisrKyBiL2ZzL2pmcy9qZnNfbG9nbWdyLmMKQEAgLTExNDQsOCAr
MTE0NCw4IEBAIGludCBsbUxvZ09wZW4oc3RydWN0IHN1cGVyX2Jsb2NrICpzYikKIAliZGV2X2Zw
dXQoYmRldl9maWxlKTsKIAogICAgICAgZnJlZToJCS8qIGZyZWUgbG9nIGRlc2NyaXB0b3IgKi8K
LQltdXRleF91bmxvY2soJmpmc19sb2dfbXV0ZXgpOwogCWtmcmVlKGxvZyk7CisJbXV0ZXhfdW5s
b2NrKCZqZnNfbG9nX211dGV4KTsKIAogCWpmc193YXJuKCJsbUxvZ09wZW46IGV4aXQoJWQpIiwg
cmMpOwogCXJldHVybiByYzsKCmJhc2UtY29tbWl0OiAyYzcxZmRmMDJhOTViM2RkNDI1YjQyZjI4
ZmQ0N2ZiMmIxZDIyNzAyCi0tIAoyLjM0LjEKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNj
dXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
