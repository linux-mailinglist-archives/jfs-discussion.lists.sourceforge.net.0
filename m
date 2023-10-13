Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD17C8276
	for <lists+jfs-discussion@lfdr.de>; Fri, 13 Oct 2023 11:50:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qrEo0-0000X4-Hv;
	Fri, 13 Oct 2023 09:50:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qrEnz-0000Wo-EH
 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 09:50:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8MkPWND7FIkLGaSpYdCJBetKFsUpZ+ghS1+KD9FYO1o=; b=Tg6sDi8sB0kh6ucV7TAmgy3Vfa
 IcgLCEfdXTk5KIGnY+SwZ9Ew4XsUjKtObouZS3P4Y8lWlOx19uqKO2idOS23/EkvXuuHVWEpix3Ne
 wy1ZKT2QVaO9dmzY+nZ8qGK+POGJSHT3HdwssqYKlVqUIE1tbI7rFe7w8l2lUlv2tgBA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8MkPWND7FIkLGaSpYdCJBetKFsUpZ+ghS1+KD9FYO1o=; b=jGtBHCZ+91p69PwkGT0mcySZbn
 jNzL3/Qs6feinoLStzBIDYWDGsPIwQoQxnMWodzsnLah9SkeIzJjVQJKfQt8ZRNJs7W05SyTTmcFN
 No3dQ6qmZMbnQj7sqxY0NXrJWx9P9GF0vAs+o6lv7Jcc6VhVcras0f9H37SdRG9r11tk=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qrEnw-00028s-A3 for jfs-discussion@lists.sourceforge.net;
 Fri, 13 Oct 2023 09:50:02 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 006d021491bc7-57b706f604aso1065325eaf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 13 Oct 2023 02:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697190594; x=1697795394; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=8MkPWND7FIkLGaSpYdCJBetKFsUpZ+ghS1+KD9FYO1o=;
 b=fUR9kHEQrABuhAG/cWjsHi6S0xm0y/kiFtf4GSH0kn/XZI8RKrKxDz1StBn0vsxlO6
 zczR0UKzmiYpT9uerO9SORFu+jmEfy9+zXKEH5/rVBBcrErEdur+Z19x80e/bK8p+k00
 IzK+VthABi1Yh4TI9thlUJvLof5YKsXS1SnN7AkzvFudquqeFVPRVmLXAvuH9JE1TYMQ
 YbLMz5SrjOTmMTlnLnZvGGbsPXA/KuJ1KmfylrqVB29tr6SFEsiMvJ1ycVgn00hVisWG
 qg15PoVpMjkYLPmE/8CcS4gJ7LyoJdxzu9KbvfXHxQMXSLOEpBhMp0utSG85axvWZH2U
 bLIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697190594; x=1697795394;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=8MkPWND7FIkLGaSpYdCJBetKFsUpZ+ghS1+KD9FYO1o=;
 b=e60QH9RgyYHuQS+demGbVz991QL5kf1mciTgCN+E/W9BQQ5/aVhnoZtP1LkP+PTgTt
 Kwnzip2+bl18GXRxPkBtfqFp4SUdQD6F8Pu9fV3VNjDGhPJP95MEDdsQhxzY58qthUlY
 SMhQ21qBclvDvYF5ORcsBYheBoJZarfYpJosDOh7aRhFMuhd/46XPngTe9xOIkMcLO3Q
 J8VzupBNGdjE2xuoctfPtZUSO6Scw+732+3HcJi37LZQvxjEKujI7Hdplf1TogO4T6+f
 u3rBzaQMGpkigAOumKrZ88b7rJaf1n5lCmRQX21fgVkC+73mRtMb2y7Sm1FLONG6KJEq
 RZ4w==
X-Gm-Message-State: AOJu0YxusIcJ5XmFDlHHyzZQNmDrPwXaiNCOb7hlie3iKgjqEvqwHko5
 U9eVn+voOlwfK2hPTYfIxIw=
X-Google-Smtp-Source: AGHT+IGIXctYQD3YbPZTMQ8Deht71+5hv/JyjFhdZPDyakxzik07y6xT2JwDpoQhOrITnjwqYHKjpw==
X-Received: by 2002:a05:6358:3994:b0:145:794e:ac30 with SMTP id
 b20-20020a056358399400b00145794eac30mr28075515rwe.17.1697190594478; 
 Fri, 13 Oct 2023 02:49:54 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.178]) by smtp.gmail.com with ESMTPSA id
 s3-20020aa78283000000b00692b6fe1c7asm13559396pfm.179.2023.10.13.02.49.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Oct 2023 02:49:54 -0700 (PDT)
Message-ID: <4266e5dd-39d8-05ec-d420-4f4c78c5f016@gmail.com>
Date: Fri, 13 Oct 2023 15:19:50 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Dave Kleikamp <dave.kleikamp@oracle.com>
References: <20230919155542.4354-1-ghandatmanas@gmail.com>
 <423182d1-3d75-4a73-9011-da24658a40cc@oracle.com>
 <3d4e0f62-35bb-4b18-a64c-191c88415032@gmail.com>
 <52616ab2-6f8a-4313-a687-91a8d1081c8b@oracle.com>
Content-Language: en-US
In-Reply-To: <52616ab2-6f8a-4313-a687-91a8d1081c8b@oracle.com>
X-Spam-Score: -3.5 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 05/10/23 19:50, Dave Kleikamp wrote: > On 10/5/23 12:15AM,
 Manas Ghandat wrote: >> On 04/10/23 00:46, Dave Kleikamp wrote: >>> The size
 of the xad array can be either XTROOTMAXSLOT or >>> XTPAGEMAXSLOT depending
 on whether it is the root [...] 
 Content analysis details:   (-3.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.44 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -3.3 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qrEnw-00028s-A3
Subject: Re: [Jfs-discussion] [PATCH] jfs : fs array-index-out-of-bounds in
 txCommit
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMDUvMTAvMjMgMTk6NTAsIERhdmUgS2xlaWthbXAgd3JvdGU6Cgo+IE9uIDEwLzUvMjMgMTI6
MTVBTSwgTWFuYXMgR2hhbmRhdCB3cm90ZToKPj4gT24gMDQvMTAvMjMgMDA6NDYsIERhdmUgS2xl
aWthbXAgd3JvdGU6Cj4+PiBUaGUgc2l6ZSBvZiB0aGUgeGFkIGFycmF5IGNhbiBiZSBlaXRoZXIg
WFRST09UTUFYU0xPVCBvciAKPj4+IFhUUEFHRU1BWFNMT1QgZGVwZW5kaW5nIG9uIHdoZXRoZXIg
aXQgaXMgdGhlIHJvb3QsIGltYmVkZGVkIGluIHRoZSAKPj4+IGlub2RlLCBvciBub3QuIEl0IGlz
IGN1cnJlbnRseSBkZWNsYXJlZCB3aXRoIHRoZSBzbWFsbGVyIHZhbHVlIHNvIHdlIAo+Pj4gY2Fu
IHVzZSB4dHBhZ2VfdCB3aXRoaW4gdGhlIGlub2RlLgo+Pj4KPj4+IEkgaGFkIHByb21pc2VkIHRv
IGFkZHJlc3MgdGhpcywgYnV0IGhhdmVuJ3QgZ290dGVuIHRvIGl0IHlldC4gSSdsbCAKPj4+IHRy
eSB0byBjYXJ2ZSBvdXQgc29tZSB0aW1lIHRvIGRvIHRoYXQuCj4+Pgo+Pj4gVGhhbmtzLAo+Pj4g
U2hhZ2d5Cj4+Cj4+IENhbiB5b3UgZ3VpZGUgd2l0aCB0aGUgd29ya2Zsb3cgb2YgaG93IHRoaW5n
cyBzaG91bGQgYmUgZG9uZS4gSSBjYW4gCj4+IHRyeSB0byB3b3JrIG9uIGl0IGFuZCByZXNvbHZl
IHRoZSBpc3N1ZS4KPj4KPgo+IEkgd2FzIGFibGUgdG8gY29iYmxlIHRoaXMgdG9nZXRoZXIuIEl0
IGNvbXBpbGVzIGNsZWFubHksIGJ1dCBJIGhhdmVuJ3QKPiB0ZXN0ZWQgaXQgeWV0Lgo+Cj4gSW4g
b3JkZXIgdG8gbWFrZSBhcnJheSBib3VuZHMgY2hlY2tpbmcgc2FuZSwgcHJvdmlkZSBhIHNlcGFy
YXRlCj4gZGVmaW5pdGlvbiBvZiB0aGUgaW4taW5vZGUgeHRyZWUgcm9vdCBhbmQgdGhlIGV4dGVy
bmFsIHh0cmVlIHBhZ2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBEYXZlIEtsZWlrYW1wIDxkYXZlLmts
ZWlrYW1wQG9yYWNsZS5jb20+Cj4gLS0tCj4gwqBmcy9qZnMvamZzX2Rpbm9kZS5oIHzCoCAyICst
Cj4gwqBmcy9qZnMvamZzX2ltYXAuY8KgwqAgfMKgIDYgKysrLS0tCj4gwqBmcy9qZnMvamZzX2lu
Y29yZS5oIHzCoCAyICstCj4gwqBmcy9qZnMvamZzX3R4bm1nci5jIHzCoCA0ICsrLS0KPiDCoGZz
L2pmcy9qZnNfeHRyZWUuY8KgIHzCoCA0ICsrLS0KPiDCoGZzL2pmcy9qZnNfeHRyZWUuaMKgIHwg
MzcgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+IMKgNiBmaWxlcyBjaGFu
Z2VkLCAzMiBpbnNlcnRpb25zKCspLCAyMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9m
cy9qZnMvamZzX2Rpbm9kZS5oIGIvZnMvamZzL2pmc19kaW5vZGUuaAo+IGluZGV4IDZiMjMxZDBk
MDA3MS4uNjAzYWFlMTdhNjkzIDEwMDY0NAo+IC0tLSBhL2ZzL2pmcy9qZnNfZGlub2RlLmgKPiAr
KysgYi9mcy9qZnMvamZzX2Rpbm9kZS5oCj4gQEAgLTk2LDcgKzk2LDcgQEAgc3RydWN0IGRpbm9k
ZSB7Cj4gwqAjZGVmaW5lIGRpX2dlbmdlbsKgwqDCoCB1Ll9maWxlLl91MS5faW1hcC5fZ2VuZ2Vu
Cj4KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdW5pb24gewo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgeHRwYWdlX3QgX3h0cm9vdDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHh0cm9vdF90IF94dHJvb3Q7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgc3RydWN0IHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHU4IHVudXNlZFsxNl07wqDCoMKgIC8qIDE2OiAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZHhkX3QgX2R4ZDvCoMKgwqAgLyogMTY6ICovCj4gZGlmZiAtLWdp
dCBhL2ZzL2pmcy9qZnNfaW1hcC5jIGIvZnMvamZzL2pmc19pbWFwLmMKPiBpbmRleCAxYjI2N2Vl
YzNmMzYuLjM5NGUwYWYwZTVkZiAxMDA2NDQKPiAtLS0gYS9mcy9qZnMvamZzX2ltYXAuYwo+ICsr
KyBiL2ZzL2pmcy9qZnNfaW1hcC5jCj4gQEAgLTY3MCw3ICs2NzAsNyBAQCBpbnQgZGlXcml0ZSh0
aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXApCj4gwqDCoMKgwqDCoMKgwqDCoMKgICogVGhpcyBp
cyB0aGUgc3BlY2lhbCB4dHJlZSBpbnNpZGUgdGhlIGRpcmVjdG9yeSBmb3Igc3RvcmluZwo+IMKg
wqDCoMKgwqDCoMKgwqDCoCAqIHRoZSBkaXJlY3RvcnkgdGFibGUKPiDCoMKgwqDCoMKgwqDCoMKg
wqAgKi8KPiAtwqDCoMKgwqDCoMKgwqAgeHRwYWdlX3QgKnAsICp4cDsKPiArwqDCoMKgwqDCoMKg
wqAgeHRyb290X3QgKnAsICp4cDsKPiDCoMKgwqDCoMKgwqDCoMKgIHhhZF90ICp4YWQ7Cj4KPiDC
oMKgwqDCoMKgwqDCoMKgIGpmc19pcC0+eHRsaWQgPSAwOwo+IEBAIC02ODQsNyArNjg0LDcgQEAg
aW50IGRpV3JpdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5vZGUgKmlwKQo+IMKgwqDCoMKgwqDCoMKg
wqDCoCAqIGNvcHkgeHRyZWUgcm9vdCBmcm9tIGlub2RlIHRvIGRpbm9kZToKPiDCoMKgwqDCoMKg
wqDCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoMKgIHAgPSAmamZzX2lwLT5pX3h0cm9vdDsKPiAt
wqDCoMKgwqDCoMKgwqAgeHAgPSAoeHRwYWdlX3QgKikgJmRwLT5kaV9kaXJ0YWJsZTsKPiArwqDC
oMKgwqDCoMKgwqAgeHAgPSAoeHRyb290X3QgKikgJmRwLT5kaV9kaXJ0YWJsZTsKPiDCoMKgwqDC
oMKgwqDCoMKgIGx2ID0gaWxpbmVsb2NrLT5sdjsKPiDCoMKgwqDCoMKgwqDCoMKgIGZvciAobiA9
IDA7IG4gPCBpbGluZWxvY2stPmluZGV4OyBuKyssIGx2KyspIHsKPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgbWVtY3B5KCZ4cC0+eGFkW2x2LT5vZmZzZXRdLCAmcC0+eGFkW2x2LT5vZmZzZXRd
LAo+IEBAIC03MTMsNyArNzEzLDcgQEAgaW50IGRpV3JpdGUodGlkX3QgdGlkLCBzdHJ1Y3QgaW5v
ZGUgKmlwKQo+IMKgwqDCoMKgwqAgKsKgwqDCoCByZWd1bGFyIGZpbGU6IDE2IGJ5dGUgKFhBRCBz
bG90KSBncmFudWxhcml0eQo+IMKgwqDCoMKgwqAgKi8KPiDCoMKgwqDCoCBpZiAodHlwZSAmIHRs
Y2tYVFJFRSkgewo+IC3CoMKgwqDCoMKgwqDCoCB4dHBhZ2VfdCAqcCwgKnhwOwo+ICvCoMKgwqDC
oMKgwqDCoCB4dHJvb3RfdCAqcCwgKnhwOwo+IMKgwqDCoMKgwqDCoMKgwqAgeGFkX3QgKnhhZDsK
Pgo+IMKgwqDCoMKgwqDCoMKgwqAgLyoKPiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19pbmNvcmUu
aCBiL2ZzL2pmcy9qZnNfaW5jb3JlLmgKPiBpbmRleCA3MjFkZWY2OWU3MzIuLmRkNDI2NGFhOWJl
ZCAxMDA2NDQKPiAtLS0gYS9mcy9qZnMvamZzX2luY29yZS5oCj4gKysrIGIvZnMvamZzL2pmc19p
bmNvcmUuaAo+IEBAIC02Niw3ICs2Niw3IEBAIHN0cnVjdCBqZnNfaW5vZGVfaW5mbyB7Cj4gwqDC
oMKgwqAgbGlkX3TCoMKgwqAgeHRsaWQ7wqDCoMKgwqDCoMKgwqAgLyogbGlkIG9mIHh0cmVlIGxv
Y2sgb24gZGlyZWN0b3J5ICovCj4gwqDCoMKgwqAgdW5pb24gewo+IMKgwqDCoMKgwqDCoMKgwqAg
c3RydWN0IHsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB4dHBhZ2VfdCBfeHRyb290O8KgwqDC
oCAvKiAyODg6IHh0cmVlIHJvb3QgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB4dHJvb3Rf
dCBfeHRyb290O8KgwqDCoCAvKiAyODg6IHh0cmVlIHJvb3QgKi8KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGlub21hcCAqX2ltYXA7wqDCoMKgIC8qIDQ6IGlub2RlIG1hcCBoZWFk
ZXLCoMKgwqAgKi8KPiDCoMKgwqDCoMKgwqDCoMKgIH0gZmlsZTsKPiDCoMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCB7Cj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfdHhubWdyLmMgYi9mcy9qZnMvamZz
X3R4bm1nci5jCj4gaW5kZXggY2U0YjQ3NjBmY2IxLi5kY2NjOGIzZjEwNDUgMTAwNjQ0Cj4gLS0t
IGEvZnMvamZzL2pmc190eG5tZ3IuYwo+ICsrKyBiL2ZzL2pmcy9qZnNfdHhubWdyLmMKPiBAQCAt
NzgzLDcgKzc4Myw3IEBAIHN0cnVjdCB0bG9jayAqdHhMb2NrKHRpZF90IHRpZCwgc3RydWN0IGlu
b2RlICppcCwgCj4gc3RydWN0IG1ldGFwYWdlICogbXAsCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIGlmIChtcC0+eGZsYWcgJiBDT01NSVRfUEFHRSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBwID0gKHh0cGFnZV90ICopIG1wLT5kYXRhOwo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBlbHNlCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwID0gJmpmc19p
cC0+aV94dHJvb3Q7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwID0gKHh0cGFn
ZV90ICopICZqZnNfaXAtPmlfeHRyb290Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB4dGxj
ay0+bHdtLm9mZnNldCA9Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbGUxNl90
b19jcHUocC0+aGVhZGVyLm5leHRpbmRleCk7Cj4gwqDCoMKgwqDCoMKgwqDCoCB9Cj4gQEAgLTE2
NzYsNyArMTY3Niw3IEBAIHN0YXRpYyB2b2lkIHh0TG9nKHN0cnVjdCBqZnNfbG9nICogbG9nLCBz
dHJ1Y3QgCj4gdGJsb2NrICogdGJsaywgc3RydWN0IGxyZCAqIGxyZCwKPgo+IMKgwqDCoMKgIGlm
ICh0bGNrLT50eXBlICYgdGxja0JUUk9PVCkgewo+IMKgwqDCoMKgwqDCoMKgwqAgbHJkLT5sb2cu
cmVkb3BhZ2UudHlwZSB8PSBjcHVfdG9fbGUxNihMT0dfQlRST09UKTsKPiAtwqDCoMKgwqDCoMKg
wqAgcCA9ICZKRlNfSVAoaXApLT5pX3h0cm9vdDsKPiArwqDCoMKgwqDCoMKgwqAgcCA9ICh4dHBh
Z2VfdCAqKSAmSkZTX0lQKGlwKS0+aV94dHJvb3Q7Cj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoU19J
U0RJUihpcC0+aV9tb2RlKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbHJkLT5sb2cucmVk
b3BhZ2UudHlwZSB8PQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNwdV90b19s
ZTE2KExPR19ESVJfWFRSRUUpOwo+IGRpZmYgLS1naXQgYS9mcy9qZnMvamZzX3h0cmVlLmMgYi9m
cy9qZnMvamZzX3h0cmVlLmMKPiBpbmRleCAyZDMwNGNlZTg4NGMuLjVlZTYxOGQxN2U3NyAxMDA2
NDQKPiAtLS0gYS9mcy9qZnMvamZzX3h0cmVlLmMKPiArKysgYi9mcy9qZnMvamZzX3h0cmVlLmMK
PiBAQCAtMTIxMyw3ICsxMjEzLDcgQEAgeHRTcGxpdFJvb3QodGlkX3QgdGlkLAo+IMKgwqDCoMKg
IHN0cnVjdCB4dGxvY2sgKnh0bGNrOwo+IMKgwqDCoMKgIGludCByYzsKPgo+IC3CoMKgwqAgc3Ag
PSAmSkZTX0lQKGlwKS0+aV94dHJvb3Q7Cj4gK8KgwqDCoCBzcCA9ICh4dHBhZ2VfdCAqKSAmSkZT
X0lQKGlwKS0+aV94dHJvb3Q7Cj4KPiDCoMKgwqDCoCBJTkNSRU1FTlQoeHRTdGF0LnNwbGl0KTsK
Pgo+IEBAIC0yMDk4LDcgKzIwOTgsNyBAQCBpbnQgeHRBcHBlbmQodGlkX3QgdGlkLMKgwqDCoMKg
wqDCoMKgIC8qIHRyYW5zYWN0aW9uIGlkICovCj4gwqAgKi8KPiDCoHZvaWQgeHRJbml0Um9vdCh0
aWRfdCB0aWQsIHN0cnVjdCBpbm9kZSAqaXApCj4gwqB7Cj4gLcKgwqDCoCB4dHBhZ2VfdCAqcDsK
PiArwqDCoMKgIHh0cm9vdF90ICpwOwo+Cj4gwqDCoMKgwqAgLyoKPiDCoMKgwqDCoMKgICogYWNx
dWlyZSBhIHRyYW5zYWN0aW9uIGxvY2sgb24gdGhlIHJvb3QKPiBkaWZmIC0tZ2l0IGEvZnMvamZz
L2pmc194dHJlZS5oIGIvZnMvamZzL2pmc194dHJlZS5oCj4gaW5kZXggYWQ3NTkyMTkxZDc2Li4w
ZjZjZjVhMWNlNzUgMTAwNjQ0Cj4gLS0tIGEvZnMvamZzL2pmc194dHJlZS5oCj4gKysrIGIvZnMv
amZzL2pmc194dHJlZS5oCj4gQEAgLTY1LDI0ICs2NSwzMyBAQCBzdHJ1Y3QgeGFkbGlzdCB7Cj4g
wqAjZGVmaW5lIFhUUEFHRU1BWFNMT1TCoMKgwqAgMjU2Cj4gwqAjZGVmaW5lIFhURU5UUllTVEFS
VMKgwqDCoCAyCj4KPiAtLyoKPiAtICrCoMKgwqAgeHRyZWUgcGFnZToKPiAtICovCj4gLXR5cGVk
ZWYgdW5pb24gewo+IC3CoMKgwqAgc3RydWN0IHh0aGVhZGVyIHsKPiAtwqDCoMKgwqDCoMKgwqAg
X19sZTY0IG5leHQ7wqDCoMKgIC8qIDg6ICovCj4gLcKgwqDCoMKgwqDCoMKgIF9fbGU2NCBwcmV2
O8KgwqDCoCAvKiA4OiAqLwo+ICtzdHJ1Y3QgeHRoZWFkZXIgewo+ICvCoMKgwqAgX19sZTY0IG5l
eHQ7wqDCoMKgIC8qIDg6ICovCj4gK8KgwqDCoCBfX2xlNjQgcHJldjvCoMKgwqAgLyogODogKi8K
Pgo+IC3CoMKgwqDCoMKgwqDCoCB1OCBmbGFnO8KgwqDCoCAvKiAxOiAqLwo+IC3CoMKgwqDCoMKg
wqDCoCB1OCByc3J2ZDE7wqDCoMKgIC8qIDE6ICovCj4gLcKgwqDCoMKgwqDCoMKgIF9fbGUxNiBu
ZXh0aW5kZXg7wqDCoMKgIC8qIDI6IG5leHQgaW5kZXggPSBudW1iZXIgb2YgZW50cmllcyAqLwo+
IC3CoMKgwqDCoMKgwqDCoCBfX2xlMTYgbWF4ZW50cnk7wqDCoMKgIC8qIDI6IG1heCBudW1iZXIg
b2YgZW50cmllcyAqLwo+IC3CoMKgwqDCoMKgwqDCoCBfX2xlMTYgcnNydmQyO8KgwqDCoCAvKiAy
OiAqLwo+ICvCoMKgwqAgdTggZmxhZzvCoMKgwqAgLyogMTogKi8KPiArwqDCoMKgIHU4IHJzcnZk
MTvCoMKgwqAgLyogMTogKi8KPiArwqDCoMKgIF9fbGUxNiBuZXh0aW5kZXg7wqDCoMKgIC8qIDI6
IG5leHQgaW5kZXggPSBudW1iZXIgb2YgZW50cmllcyAqLwo+ICvCoMKgwqAgX19sZTE2IG1heGVu
dHJ5O8KgwqDCoCAvKiAyOiBtYXggbnVtYmVyIG9mIGVudHJpZXMgKi8KPiArwqDCoMKgIF9fbGUx
NiByc3J2ZDI7wqDCoMKgIC8qIDI6ICovCj4KPiAtwqDCoMKgwqDCoMKgwqAgcHhkX3Qgc2VsZjvC
oMKgwqAgLyogODogc2VsZiAqLwo+IC3CoMKgwqAgfSBoZWFkZXI7wqDCoMKgwqDCoMKgwqAgLyog
KDMyKSAqLwo+ICvCoMKgwqAgcHhkX3Qgc2VsZjvCoMKgwqAgLyogODogc2VsZiAqLwo+ICt9Owo+
Cj4gKy8qCj4gKyAqwqDCoMKgIHh0cmVlIHJvb3QgKGluIGlub2RlKToKPiArICovCj4gK3R5cGVk
ZWYgdW5pb24gewo+ICvCoMKgwqAgc3RydWN0IHh0aGVhZGVyIGhlYWRlcjsKPiDCoMKgwqDCoCB4
YWRfdCB4YWRbWFRST09UTUFYU0xPVF07wqDCoMKgIC8qIDE2ICogbWF4ZW50cnk6IHhhZCBhcnJh
eSAqLwo+ICt9IHh0cm9vdF90Owo+ICsKPiArLyoKPiArICrCoMKgwqAgeHRyZWUgcGFnZToKPiAr
ICovCj4gK3R5cGVkZWYgdW5pb24gewo+ICvCoMKgwqAgc3RydWN0IHh0aGVhZGVyIGhlYWRlcjsK
PiArwqDCoMKgIHhhZF90IHhhZFtYVFBBR0VNQVhTTE9UXTvCoMKgwqAgLyogMTYgKiBtYXhlbnRy
eTogeGFkIGFycmF5ICovCj4gwqB9IHh0cGFnZV90Owo+Cj4gwqAvKgoKSSB0ZXN0ZWQgdGhpcyBw
YXRjaCBhbmQgaXQgaGFzIG5vdCB0cmlnZ2VyZWQgYW55IGJ1Zy4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBs
aXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
