Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC29C7DB5E
	for <lists+jfs-discussion@lfdr.de>; Sun, 23 Nov 2025 05:24:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GAsRylY5dogI9dfoE+reTsHLQ8gfYQr9x4kIRACkgoQ=; b=aE0EZs4jVugkm0JZlP4fr2eR32
	aCIEB6vlyLXacDp1dY1yddxeSAy/GCo+mtznza4SkkagDKa6pc5Ng5LUfm5tplwoWbNZePUYC+/VO
	bCi9oxVhvTC+4PDXdQG6zz+kkTSgwxO37sTCTLSILFtMDxG3RazzUlXkjYa0lR72hTfU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vN1dU-00064I-IZ;
	Sun, 23 Nov 2025 04:23:40 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1vN1dT-00064C-H9
 for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Nov 2025 04:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nhvna7XyABpz0y7IciVRtasd6k6MY2T7JOlNLRQKzHM=; b=ZdEyHTkLWWphqukXszcXzKSmCZ
 T06ZFspzxIaQGYODap2qwzrVl6hOlBlEdyLO5krKiJoaMQACakZWVuePfE02bT6GOKfuB2HWgPA5q
 Hsp2nqiZLrDX9YiDoYbiJERQhmgGqTnrPh2JjgGjmlTg8b5nLxahHQPavJlieDZRl2Jc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nhvna7XyABpz0y7IciVRtasd6k6MY2T7JOlNLRQKzHM=; b=LTL3pFm+8On2zLpcVCOtrA8AMK
 uRx2UJZ9zOthfzpSYsOriDhiLd0WvM7NeP93Ts4O9hyj4s3nLA+/DqjJxIdMpTqJg219cFBWMCt9d
 atGvD5pyAkAoYCbt8vh7XnyGIw7n/9wgJwknlvqOhxSXyiPPbwSlc8ThU/xYl9NAyF5E=;
Received: from mail-qt1-f171.google.com ([209.85.160.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vN1dS-0002be-SK for jfs-discussion@lists.sourceforge.net;
 Sun, 23 Nov 2025 04:23:39 +0000
Received: by mail-qt1-f171.google.com with SMTP id
 d75a77b69052e-4ed82ee9e57so48891261cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Nov 2025 20:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1763871813; x=1764476613; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Nhvna7XyABpz0y7IciVRtasd6k6MY2T7JOlNLRQKzHM=;
 b=OR7HM1SlSld4UEOE4CHVhUDOSQbu1UFyxhjX6FNzE9b1tEMHMo3iSldeadMZLtGTkJ
 ctBfKPfeOFVaDJetEdsU/0QBy3e0aA7LzSpgAZ4DLawRSxqBcLZJQyHnuQ0qt/wob+Ct
 NO56VATz1LIqEBAGDEk5zA7aipVJTcYHMbm94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1763871813; x=1764476613;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Nhvna7XyABpz0y7IciVRtasd6k6MY2T7JOlNLRQKzHM=;
 b=lzNBXxHsCJVh4y7mN2hoiYx8TRUfuQRVBefHp+5FxN0nO5VOvSVV3iTVBG4F9tJNHQ
 xjC7DrLoYpkpD8bVzKvKjQZdxUiCFp8rl6hZebfUIOHFeUnaXgwkhzrvT6YQhbbrPijO
 TS5zIhGOoB6azqkrXWFOFplx2MnFkh/JB8VFoMnzIEFzQeKnSVIdN16BLVTtNUUbMQk5
 CtseNSjOJsyt7XzreNJV1NiNwyjcgHhc50g5Lzg9nziw8pWF+kXe9/hSOJgvltZLlwzm
 SSAQlLw0ws9hN0FB6AlmY9UXh9fUATx0V+/aRrstkoBThFtQ1fS1h0SO8t5nklauDk3O
 5WaA==
X-Gm-Message-State: AOJu0YyPmHIhDlj7T+2+FBEN8jFdWlKfxmMeg8sNIKzC8RWWcVzOPAF7
 AesyxpiZJ9mT/9uYZ5AhUT4qZstKzaKvi9oTALEfvAYQgmPvK91mk7MLqe9ZDAQRLy2K8BHhbB+
 v8WAgGIPecq+5Mm2nMr4/R8BQymkZ99ICZixFDtQdX+bnWdW/mwTBCIZfbg==
X-Gm-Gg: ASbGncttbJykvOnnYGNV1q4tpg70YfXmFwotrqUEgYEU2nfd68POWEMxF0JJeIRzseA
 ZZNqX6l5GXMrx7DWwigYrGqNOvpr1YNVYNZ1m5Hp2tMgSHrQJxyvOQm/RrejPEoKL393cwDA7Gj
 ymy8B6SZp3y13x0DplFJ3Y22/QyoCsk0JMEyrB8WHak5t70BR4GS+l2z41zbKDcCBitzSsRfFQm
 DdcB73XYUErla2yVW5sc9plunpv2eW1wgryj8MBYt+iSQ0cUqW0LCes7U8TJX3KB7/ZKlDqdHN5
 Or1XabU1lA1lkD1dWabDH+JeGsE=
X-Google-Smtp-Source: AGHT+IFgrY980E9ZQyocO3aMJGUgJeNVFSms6jRM+b3NQsPdCBONY5tq34RGbAY8Nhr62GwkeQB9udkdlOIH8X4kvoo=
X-Received: by 2002:a05:690e:151a:b0:63e:1ee2:eb03 with SMTP id
 956f58d0204a3-64302af1600mr5089681d50.45.1763865780942; Sat, 22 Nov 2025
 18:43:00 -0800 (PST)
MIME-Version: 1.0
References: <20251108141834.46428-1-ssranevjti@gmail.com>
 <20251108141834.46428-2-ssranevjti@gmail.com>
In-Reply-To: <20251108141834.46428-2-ssranevjti@gmail.com>
Date: Sun, 23 Nov 2025 08:12:49 +0530
X-Gm-Features: AWmQ_bnUQ9cqktRiIIylW1Y4-1ZWcYhGpz9uHU__v-2fKfpCX3dbdAfHmkK7RkM
Message-ID: <CANNWa05ecKo0MOQDUAusuDzNdyFH7gEpF-tS1-Z56Gpg_jWZ5A@mail.gmail.com>
To: shaggy@kernel.org
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Pinging if missed On Sat, Nov 8,
 2025 at 7:48 PM <ssrane_b23@ee.vjti.ac.in>
 wrote: > > From: Shaurya Rane <ssrane_b23@ee.vjti.ac.in> > > The synclist
 field in struct metapage was not being initialized during > allocati [...]
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.171 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.171 listed in wl.mailspike.net]
X-Headers-End: 1vN1dS-0002be-SK
Subject: Re: [Jfs-discussion] [PATCH v3] jfs: Initialize synclist in
 metapage allocation
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
From: SHAURYA RANE via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: SHAURYA RANE <ssrane_b23@ee.vjti.ac.in>
Cc: shivankg@amd.com, jfs-discussion@lists.sourceforge.net,
 david.hunter.linux@gmail.com, david@redhat.com, linux-kernel@vger.kernel.org,
 syzbot+e87be72c9a6fe69996f5@syzkaller.appspotmail.com, khalid@kernel.org,
 skhan@linuxfoundation.org, dsterba@suse.com, akpm@linux-foundation.org,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

UGluZ2luZyBpZiBtaXNzZWQKCk9uIFNhdCwgTm92IDgsIDIwMjUgYXQgNzo0OOKAr1BNIDxzc3Jh
bmVfYjIzQGVlLnZqdGkuYWMuaW4+IHdyb3RlOgo+Cj4gRnJvbTogU2hhdXJ5YSBSYW5lIDxzc3Jh
bmVfYjIzQGVlLnZqdGkuYWMuaW4+Cj4KPiBUaGUgc3luY2xpc3QgZmllbGQgaW4gc3RydWN0IG1l
dGFwYWdlIHdhcyBub3QgYmVpbmcgaW5pdGlhbGl6ZWQgZHVyaW5nCj4gYWxsb2NhdGlvbiBpbiBh
bGxvY19tZXRhcGFnZSgpLCBsZWFkaW5nIHRvIGxpc3QgY29ycnVwdGlvbiB3aGVuIHRoZQo+IG1l
dGFwYWdlIGlzIGxhdGVyIGFkZGVkIHRvIGEgdHJhbnNhY3Rpb24ncyBzeW5jIGxpc3QuCj4KPiBX
aGVuIGRpVXBkYXRlUE1hcCgpIGNhbGxzIGxpc3RfYWRkKCZtcC0+c3luY2xpc3QsICZ0YmxrLT5z
eW5jbGlzdCksIGlmCj4gdGhlIHN5bmNsaXN0IGZpZWxkIGNvbnRhaW5zIHN0YWxlIGRhdGEgZnJv
bSBhIHByZXZpb3VzIGFsbG9jYXRpb24gKHN1Y2gKPiBhcyBMSVNUX1BPSVNPTiB2YWx1ZXMgZnJv
bSBhIGZyZWVkIGxpc3Qgbm9kZSksIHRoZSBsaXN0IGRlYnVnZ2luZyBjb2RlCj4gZGV0ZWN0cyB0
aGUgY29ycnVwdGlvbiBhbmQgdHJpZ2dlcnMgYSBzdGFjayBzZWdtZW50IGZhdWx0Lgo+Cj4gVGhp
cyBpc3N1ZSBpcyBpbnRlcm1pdHRlbnQgYmVjYXVzZSBpdCBvbmx5IG1hbmlmZXN0cyB3aGVuIHJl
Y3ljbGVkCj4gbWVtb3J5IGhhcHBlbnMgdG8gY29udGFpbiBwb2lzb24gdmFsdWVzIGluIHRoZSBz
eW5jbGlzdCBmaWVsZC4gVGhlIGJ1Zwo+IHdhcyBkaXNjb3ZlcmVkIGJ5IHN5emJvdCwgd2hpY2gg
Y3JlYXRlcyBzcGVjaWZpYyBmaWxlc3lzdGVtIHBhdHRlcm5zCj4gdGhhdCByZWxpYWJseSB0cmln
Z2VyIHRoaXMgdW5pbml0aWFsaXplZCBtZW1vcnkgdXNhZ2UuCj4KPiBJbml0aWFsaXplIHRoZSBz
eW5jbGlzdCBmaWVsZCB3aXRoIElOSVRfTElTVF9IRUFEKCkgaW4gYWxsb2NfbWV0YXBhZ2UoKQo+
IHRvIGVuc3VyZSBpdCdzIGluIGEgdmFsaWQgc3RhdGUgYmVmb3JlIGJlaW5nIHVzZWQgaW4gbGlz
dCBvcGVyYXRpb25zLgo+IFRoaXMgaXMgY29uc2lzdGVudCB3aXRoIGhvdyB0aGUgd2FpdCBxdWV1
ZSBpcyBpbml0aWFsaXplZCBpbiB0aGUgc2FtZQo+IGZ1bmN0aW9uLgo+Cj4gUmVwb3J0ZWQtYnk6
IHN5emJvdCtlODdiZTcyYzlhNmZlNjk5OTZmNUBzeXprYWxsZXIuYXBwc3BvdG1haWwuY29tCj4g
Q2xvc2VzOiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9ZTg3YmU3MmM5
YTZmZTY5OTk2ZjUKPiBTaWduZWQtb2ZmLWJ5OiBTaGF1cnlhIFJhbmUgPHNzcmFuZV9iMjNAZWUu
dmp0aS5hYy5pbj4KPgo+IC0tLQo+IFRlc3RlZDoKPiAgLSBUZXN0ZWQgbG9jYWxseSB3aXRoIHN5
emJvdCByZXByb2R1Y2VyLCBubyBlcnJvcnMgb2JzZXJ2ZWQKPiBDaGFuZ2Vsb2c6Cj4gLSBDb3Jy
ZWN0IGJ1ZyBsaW5rCj4gLSBDb3JyZWN0ZWQgcGF0Y2ggZm9ybWF0Cj4KPiAgZnMvamZzL2pmc19t
ZXRhcGFnZS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlm
ZiAtLWdpdCBhL2ZzL2pmcy9qZnNfbWV0YXBhZ2UuYyBiL2ZzL2pmcy9qZnNfbWV0YXBhZ2UuYwo+
IGluZGV4IDg3MWNmNGZiMzYzNi4uNzdjNTEyYTBhNDJiIDEwMDY0NAo+IC0tLSBhL2ZzL2pmcy9q
ZnNfbWV0YXBhZ2UuYwo+ICsrKyBiL2ZzL2pmcy9qZnNfbWV0YXBhZ2UuYwo+IEBAIC0yNjksNiAr
MjY5LDcgQEAgc3RhdGljIGlubGluZSBzdHJ1Y3QgbWV0YXBhZ2UgKmFsbG9jX21ldGFwYWdlKGdm
cF90IGdmcF9tYXNrKQo+ICAgICAgICAgICAgICAgICBtcC0+ZGF0YSA9IE5VTEw7Cj4gICAgICAg
ICAgICAgICAgIG1wLT5jbHNuID0gMDsKPiAgICAgICAgICAgICAgICAgbXAtPmxvZyA9IE5VTEw7
Cj4gKyAgICAgICAgICAgICAgIElOSVRfTElTVF9IRUFEKCZtcC0+c3luY2xpc3QpOwo+ICAgICAg
ICAgICAgICAgICBpbml0X3dhaXRxdWV1ZV9oZWFkKCZtcC0+d2FpdCk7Cj4gICAgICAgICB9Cj4g
ICAgICAgICByZXR1cm4gbXA7Cj4gLS0KPiAyLjM0LjEKPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApK
ZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
