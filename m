Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E9DBD7BC390
	for <lists+jfs-discussion@lfdr.de>; Sat,  7 Oct 2023 03:20:47 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qovzW-0001qR-UE;
	Sat, 07 Oct 2023 01:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <xiubli@redhat.com>) id 1qovzT-0001qL-P7
 for jfs-discussion@lists.sourceforge.net;
 Sat, 07 Oct 2023 01:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JDPgDyc+rpy+6pDy/WUApGWgXd3+hqYtxVhpZw2Z+oU=; b=EJdsokmprrjBsQacSo8XEaFk3U
 8m/PzzwNbUM9tfrvdQz10uUiVbHQjKG9zqpOU+D696oU5sSSwlYnpDvVUXN1Jc+ChYURq7NmGyHSw
 lEjRxwl31XYtTQUBwctm3Af9eMypstagGY15fRLZl97U0hzp+YEIOKeAlxVD3yGo60/8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JDPgDyc+rpy+6pDy/WUApGWgXd3+hqYtxVhpZw2Z+oU=; b=nVZ65Af2158ztmmQBayNLU2eIY
 IR+riOacPmVszdys/peDFFDDcPU/qQXHL3dp0Zj6h/MBIzjD1lzfa1UXCaOIBa8LB52MEMDn4VsoX
 qQnfWp8s8jkvlJa62BHHZxnv4bgZK1V3yBvviZQhKN1BPPAD9irHuhvQdDhtED00iHsE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1qovzK-004eTX-Ua for jfs-discussion@lists.sourceforge.net;
 Sat, 07 Oct 2023 01:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1696641602;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JDPgDyc+rpy+6pDy/WUApGWgXd3+hqYtxVhpZw2Z+oU=;
 b=Y26mIy4Lwq5cGNq3ziittyEMctrWOFPLkBtHYooDouefTbqmGJZoNw/kTpn+cEnXGlmmAE
 m29fymq+I6HvPrzmBNek4+Zx8nTEtoKedqh1QLJObcDHQOiyPrnECGKCQnuU8GwATEz1ih
 +scBD8eKn4Y1UNNtou4cti8PZURWPto=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-y3OYd8irNWq_4bKQkp122g-1; Fri, 06 Oct 2023 21:20:01 -0400
X-MC-Unique: y3OYd8irNWq_4bKQkp122g-1
Received: by mail-pl1-f199.google.com with SMTP id
 d9443c01a7336-1c747f637d4so24926825ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 06 Oct 2023 18:20:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696641600; x=1697246400;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=JDPgDyc+rpy+6pDy/WUApGWgXd3+hqYtxVhpZw2Z+oU=;
 b=TdYUbYDZCWu5CAOqo964VbWaYG2VzUJVUOWPsqcSng2LgWFJn+J04nzVj4SDr0jxGf
 ovdDss7d6+gdjQMYLzklGwyBVHEujSAyO0RfpEBv9HwLDoBzsoC3V/3QNJZfStmflwHS
 Zi56s+iaN5n2qRgVGyVc2v4L+A/Ry8j6ZbWiocUpkSz3jB1o5CwYCRf1On9iAhgkK5CM
 baoGc/9lTmbBimFCh7YiT0anAaYng1KF00pXQsFV70HxHkxmPV2z/aLv7PvuZgGw2+Wu
 18B8mXU2YcW+Ld638QeNHWfedKGwhEnYL2bxG/uEaQV/0HnhIMgVdx3HSU4WNBpXryrh
 88JQ==
X-Gm-Message-State: AOJu0YwWsyyXTB292UYFiKCTlO4zCY7fIQeSpnamsDgvHDzkEs6Q0bDT
 7uDwwM+NtXo99vF/jiYKe2Pke+0+hWhG7njzvndXzeudsXZSlu2SIm5zMq8KurHGvdQv2ItG1SD
 hziPKoGP3RGC0lufxrbRgm0AVVfZ8pDbc3dg=
X-Received: by 2002:a17:903:22cb:b0:1c4:5e9e:7865 with SMTP id
 y11-20020a17090322cb00b001c45e9e7865mr11138688plg.0.1696641600326; 
 Fri, 06 Oct 2023 18:20:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE27ukV5xdoxeuBFbDNnq/3SZ1mSxu4JFqOyNbj44S+UpM/DrxTnSraC3Bo0wkIV9f7/lhB9A==
X-Received: by 2002:a17:903:22cb:b0:1c4:5e9e:7865 with SMTP id
 y11-20020a17090322cb00b001c45e9e7865mr11138672plg.0.1696641600005; 
 Fri, 06 Oct 2023 18:20:00 -0700 (PDT)
Received: from [10.72.112.33] ([43.228.180.230])
 by smtp.gmail.com with ESMTPSA id
 a4-20020a170902ecc400b001bdc3768ca5sm4554814plh.254.2023.10.06.18.19.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Oct 2023 18:19:59 -0700 (PDT)
Message-ID: <880bb6a8-d641-003d-1e38-d0115d22eabc@redhat.com>
Date: Sat, 7 Oct 2023 09:19:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Dave Kleikamp <dave.kleikamp@oracle.com>,
 Max Kellermann <max.kellermann@ionos.com>, Ilya Dryomov
 <idryomov@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Jan Kara <jack@suse.com>
References: <20230919081900.1096840-1-max.kellermann@ionos.com>
 <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
In-Reply-To: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 10/3/23 23:32, Dave Kleikamp wrote: > I think this is sane,
 but the patch needs a description of why this is > necessary for these
 specific file systems. > Sounds reasonable. Thanks - Xiubo 
 Content analysis details:   (-3.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [170.10.129.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.8 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1qovzK-004eTX-Ua
Subject: Re: [Jfs-discussion] [PATCH] fs: apply umask if POSIX ACL support
 is disabled
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
From: Xiubo Li via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Xiubo Li <xiubli@redhat.com>
Cc: ceph-devel@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-kernel@vger.kernel.org, jfs-discussion@lists.sourceforge.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Ck9uIDEwLzMvMjMgMjM6MzIsIERhdmUgS2xlaWthbXAgd3JvdGU6Cj4gSSB0aGluayB0aGlzIGlz
IHNhbmUsIGJ1dCB0aGUgcGF0Y2ggbmVlZHMgYSBkZXNjcmlwdGlvbiBvZiB3aHkgdGhpcyBpcyAK
PiBuZWNlc3NhcnkgZm9yIHRoZXNlIHNwZWNpZmljIGZpbGUgc3lzdGVtcy4KPgpTb3VuZHMgcmVh
c29uYWJsZS4KClRoYW5rcwoKLSBYaXVibwoKCj4gVGhhbmtzLAo+IFNoYWdneQo+Cj4gT24gOS8x
OS8yMyAzOjE4QU0sIE1heCBLZWxsZXJtYW5uIHdyb3RlOgo+PiBTaWduZWQtb2ZmLWJ5OiBNYXgg
S2VsbGVybWFubiA8bWF4LmtlbGxlcm1hbm5AaW9ub3MuY29tPgo+PiAtLS0KPj4gwqAgZnMvY2Vw
aC9zdXBlci5owqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxICsKPj4gwqAgZnMvZXh0Mi9hY2wuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEgKwo+PiDCoCBmcy9qZnMvamZzX2FjbC5owqDCoMKg
wqDCoMKgwqDCoMKgIHwgMSArCj4+IMKgIGluY2x1ZGUvbGludXgvcG9zaXhfYWNsLmggfCAxICsK
Pj4gwqAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBh
L2ZzL2NlcGgvc3VwZXIuaCBiL2ZzL2NlcGgvc3VwZXIuaAo+PiBpbmRleCA1MWM3ZjJiMTRmNmYu
LmU3ZTJmMjY0YWNmNCAxMDA2NDQKPj4gLS0tIGEvZnMvY2VwaC9zdXBlci5oCj4+ICsrKyBiL2Zz
L2NlcGgvc3VwZXIuaAo+PiBAQCAtMTE5NCw2ICsxMTk0LDcgQEAgc3RhdGljIGlubGluZSB2b2lk
IAo+PiBjZXBoX2ZvcmdldF9hbGxfY2FjaGVkX2FjbHMoc3RydWN0IGlub2RlICppbm9kZSkKPj4g
wqAgc3RhdGljIGlubGluZSBpbnQgY2VwaF9wcmVfaW5pdF9hY2xzKHN0cnVjdCBpbm9kZSAqZGly
LCB1bW9kZV90ICptb2RlLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgY2VwaF9hY2xfc2VjX2N0eCAqYXNfY3R4KQo+PiDCoCB7Cj4+ICvCoMKg
wqAgKm1vZGUgJj0gfmN1cnJlbnRfdW1hc2soKTsKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4g
wqAgfQo+PiDCoCBzdGF0aWMgaW5saW5lIHZvaWQgY2VwaF9pbml0X2lub2RlX2FjbHMoc3RydWN0
IGlub2RlICppbm9kZSwKPj4gZGlmZiAtLWdpdCBhL2ZzL2V4dDIvYWNsLmggYi9mcy9leHQyL2Fj
bC5oCj4+IGluZGV4IDRhODQ0M2EyYjhlYy4uNjk0YWY3ODljNjE0IDEwMDY0NAo+PiAtLS0gYS9m
cy9leHQyL2FjbC5oCj4+ICsrKyBiL2ZzL2V4dDIvYWNsLmgKPj4gQEAgLTY3LDYgKzY3LDcgQEAg
ZXh0ZXJuIGludCBleHQyX2luaXRfYWNsIChzdHJ1Y3QgaW5vZGUgKiwgc3RydWN0IAo+PiBpbm9k
ZSAqKTsKPj4gwqAgwqAgc3RhdGljIGlubGluZSBpbnQgZXh0Ml9pbml0X2FjbCAoc3RydWN0IGlu
b2RlICppbm9kZSwgc3RydWN0IAo+PiBpbm9kZSAqZGlyKQo+PiDCoCB7Cj4+ICvCoMKgwqAgaW5v
ZGUtPmlfbW9kZSAmPSB+Y3VycmVudF91bWFzaygpOwo+PiDCoMKgwqDCoMKgIHJldHVybiAwOwo+
PiDCoCB9Cj4+IMKgICNlbmRpZgo+PiBkaWZmIC0tZ2l0IGEvZnMvamZzL2pmc19hY2wuaCBiL2Zz
L2pmcy9qZnNfYWNsLmgKPj4gaW5kZXggZjg5MmU1NGQwZmNkLi4xMDc5MWU5N2E0NmYgMTAwNjQ0
Cj4+IC0tLSBhL2ZzL2pmcy9qZnNfYWNsLmgKPj4gKysrIGIvZnMvamZzL2pmc19hY2wuaAo+PiBA
QCAtMTcsNiArMTcsNyBAQCBpbnQgamZzX2luaXRfYWNsKHRpZF90LCBzdHJ1Y3QgaW5vZGUgKiwg
c3RydWN0IAo+PiBpbm9kZSAqKTsKPj4gwqAgc3RhdGljIGlubGluZSBpbnQgamZzX2luaXRfYWNs
KHRpZF90IHRpZCwgc3RydWN0IGlub2RlICppbm9kZSwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW5vZGUgKmRpcikKPj4gwqAgewo+PiArwqDCoMKg
IGlub2RlLT5pX21vZGUgJj0gfmN1cnJlbnRfdW1hc2soKTsKPj4gwqDCoMKgwqDCoCByZXR1cm4g
MDsKPj4gwqAgfQo+PiDCoCBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9wb3NpeF9hY2wuaCBi
L2luY2x1ZGUvbGludXgvcG9zaXhfYWNsLmgKPj4gaW5kZXggMGU2NWIzZDYzNGQ5Li41NGJjOWIx
MDYxY2EgMTAwNjQ0Cj4+IC0tLSBhL2luY2x1ZGUvbGludXgvcG9zaXhfYWNsLmgKPj4gKysrIGIv
aW5jbHVkZS9saW51eC9wb3NpeF9hY2wuaAo+PiBAQCAtMTI4LDYgKzEyOCw3IEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCBjYWNoZV9ub19hY2woc3RydWN0IGlub2RlICppbm9kZSkKPj4gwqAgc3RhdGlj
IGlubGluZSBpbnQgcG9zaXhfYWNsX2NyZWF0ZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCB1bW9kZV90
ICptb2RlLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHBvc2l4X2FjbCAqKmRlZmF1bHRf
YWNsLCBzdHJ1Y3QgcG9zaXhfYWNsICoqYWNsKQo+PiDCoCB7Cj4+ICvCoMKgwqAgKm1vZGUgJj0g
fmN1cnJlbnRfdW1hc2soKTsKPj4gwqDCoMKgwqDCoCAqZGVmYXVsdF9hY2wgPSAqYWNsID0gTlVM
TDsKPj4gwqDCoMKgwqDCoCByZXR1cm4gMDsKPj4gwqAgfQo+CgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlz
dApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
