Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B4A17DDCCA
	for <lists+jfs-discussion@lfdr.de>; Wed,  1 Nov 2023 07:42:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qy4vs-0005Yp-Ef;
	Wed, 01 Nov 2023 06:42:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qy4vr-0005Yj-Ad
 for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 06:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=osCkAZShR5taCW6SV1HsSXC0KNTVnjVownZWdu919kU=; b=Jc5rU26BUm3sLPlICvACN6JdjN
 +CRLwrA3ib9OJ32p3bpnfTrJSo8L4KuHoFjVSAXPCh7U2s1VyW49479PoWhBRIIYzEEjQepBahziP
 KL3cnp6HGy+JpReLXkk9npBscARNDXUpgxgkGl/NnLd8rw7W73lLA+IeVQhEMTRXaj8E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Cc:To:From:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=osCkAZShR5taCW6SV1HsSXC0KNTVnjVownZWdu919kU=; b=GfALyAXKELp3NvFSYoZQZCANCR
 hnb3XmNXI1Q5fMLiBdw2EyuggA6Enhdp5mEmKvFDiiSxCE0acBT6Z/AGZgt0as8ruH5Ld+WOFCio6
 PQs8Mr6/ZJPZ/DJe8h/e9TrL3SHyj7dwbFR4DIc37JthmB9lLxOEwZEt18h/l0YQ9Yxg=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qy4vo-0000hb-VU for jfs-discussion@lists.sourceforge.net;
 Wed, 01 Nov 2023 06:42:27 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-1cc5b6d6228so19578765ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 31 Oct 2023 23:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1698820939; x=1699425739; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=osCkAZShR5taCW6SV1HsSXC0KNTVnjVownZWdu919kU=;
 b=bBlxkEkZ2XcgW3PNFPQOc+udV5+DFvnbmuJ7iaq9+i36DconpEtBqhzNjYWRE1aY9Z
 88/oopoa3+ghtRWA4lmxphCtr3ofbSBlKE3SaDibamxPd96w77UEbKBz6blKssj0lJ+s
 Lw5J5zCPaosPUpjW7nAwKSQPOtC9ifAu0hVXcEJdswT7A3GNw4B3j9WUo3Yw+SNYHBiG
 DZyUgz3dvIveCE1TxW53ouZ24fVpCqZq8OBgeQcBMxdPP0nq0IfB81LdDKUkpkBhk32k
 hSuCUhwiEw3ETcfTYXZ8v+eX4m8hy2rmswNPsX7Rh5k5q7zUUbzGpU63tDZmoM8JvAbT
 6eZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698820939; x=1699425739;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=osCkAZShR5taCW6SV1HsSXC0KNTVnjVownZWdu919kU=;
 b=BpZdVznRiIPpu32HWuJ60+oHLKGhnUw/t4XZB0ow7G+uTMDOPwKF9Pb7XXuHkAYDXi
 yzRby2y4frT5bTzz2DKC/ZUbk0tUyi/ujTr60Hg7kRgjEQQlk5haV5UgLEYTE1DDH8KJ
 2eH+Y7twnvbFvn3VcHH3bKAcszURKrQIuOj7TZd965s0cI+6cENUrNkN3v9g4HyUVKrP
 lAPzgKjxQ9YTeKke5ApzCbIokOfP3UTw3GZ9lij+657tDj1ExQsVVeyhm2SwZveXsi6t
 fhdow+bs9BTQGJEs+o7dnWIQYCSz/MnawK81/OnxZca9LXXJcZSm3h2/KNXGtfC568+8
 9reA==
X-Gm-Message-State: AOJu0YzSMB1mZ1TnUmdLAEa3F/ifExV2lmBXyE70ZbUu4vKUukpTpOA/
 +2HWf5lXx1Jy3lxnzyZYihA=
X-Google-Smtp-Source: AGHT+IE/xBdJG3FdMjRMwmd2VFlP290FD035x4hYgrrl8p8Rnijmg1W6YwuFF+MOaVxffZq50NAlGw==
X-Received: by 2002:a17:902:cf46:b0:1cc:6cc3:d9ba with SMTP id
 e6-20020a170902cf4600b001cc6cc3d9bamr2807830plg.4.1698820938942; 
 Tue, 31 Oct 2023 23:42:18 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.177]) by smtp.gmail.com with ESMTPSA id
 e19-20020a170902f1d300b001b898595be7sm624620plc.291.2023.10.31.23.42.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 31 Oct 2023 23:42:18 -0700 (PDT)
Message-ID: <a63a6936-8422-47d5-9fc5-5c40a9915665@gmail.com>
Date: Wed, 1 Nov 2023 12:12:06 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: dave.kleikamp@oracle.com, shaggy@kernel.org
References: <20231011143937.31996-1-ghandatmanas@gmail.com>
 <50a32ba6-0051-6b70-aa8a-f565f8119a69@gmail.com>
Content-Language: en-US
In-Reply-To: <50a32ba6-0051-6b70-aa8a-f565f8119a69@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, can you please review this patch On 16/10/23 20:30, Manas
 Ghandat wrote: > Just a friendly ping :) > > On 11/10/23 20:09, Manas Ghandat
 wrote: >> Currently while joining the leaf in a buddy system there is shift
 out >> of bound error [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qy4vo-0000hb-VU
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
Cc: jfs-discussion@lists.sourceforge.net,
 Linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGksIGNhbiB5b3UgcGxlYXNlIHJldmlldyB0aGlzIHBhdGNoCgpPbiAxNi8xMC8yMyAyMDozMCwg
TWFuYXMgR2hhbmRhdCB3cm90ZToKPiBKdXN0IGEgZnJpZW5kbHkgcGluZyA6KQo+Cj4gT24gMTEv
MTAvMjMgMjA6MDksIE1hbmFzIEdoYW5kYXQgd3JvdGU6Cj4+IEN1cnJlbnRseSB3aGlsZSBqb2lu
aW5nIHRoZSBsZWFmIGluIGEgYnVkZHkgc3lzdGVtIHRoZXJlIGlzIHNoaWZ0IG91dAo+PiBvZiBi
b3VuZCBlcnJvciBpbiBjYWxjdWxhdGlvbiBvZiBCVURTSVpFLiBBZGRlZCB0aGUgcmVxdWlyZWQg
Y2hlY2sKPj4gdG8gdGhlIEJVRFNJWkUgYW5kIGZpeGVkIHRoZSBkb2N1bWVudGF0aW9uIGFzIHdl
bGwuCj4+Cj4+IFJlcG9ydGVkLWJ5OiBzeXpib3QrNDExZGViZTU0ZDMxOGVhZWQzODZAc3l6a2Fs
bGVyLmFwcHNwb3RtYWlsLmNvbQo+PiBDbG9zZXM6IGh0dHBzOi8vc3l6a2FsbGVyLmFwcHNwb3Qu
Y29tL2J1Zz9leHRpZD00MTFkZWJlNTRkMzE4ZWFlZDM4Ngo+PiBTaWduZWQtb2ZmLWJ5OiBNYW5h
cyBHaGFuZGF0IDxnaGFuZGF0bWFuYXNAZ21haWwuY29tPgo+PiAtLS0KPj4gwqAgZnMvamZzL2pm
c19kbWFwLmMgfCA4ICsrKysrKystCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfZG1hcC5jIGIv
ZnMvamZzL2pmc19kbWFwLmMKPj4gaW5kZXggNmI4MzhkM2FlN2MyLi5iYWE5N2JkYTFjN2EgMTAw
NjQ0Cj4+IC0tLSBhL2ZzL2pmcy9qZnNfZG1hcC5jCj4+ICsrKyBiL2ZzL2pmcy9qZnNfZG1hcC5j
Cj4+IEBAIC0yNzMwLDcgKzI3MzAsOSBAQCBzdGF0aWMgaW50IGRiQmFja1NwbGl0KGRtdHJlZV90
ICogdHAsIGludCBsZWFmbm8pCj4+IMKgwqAgKsKgwqDCoCBsZWFmbm/CoMKgwqAgLSB0aGUgbnVt
YmVyIG9mIHRoZSBsZWFmIHRvIGJlIHVwZGF0ZWQuCj4+IMKgwqAgKsKgwqDCoCBuZXd2YWzCoMKg
wqAgLSB0aGUgbmV3IHZhbHVlIGZvciB0aGUgbGVhZi4KPj4gwqDCoCAqCj4+IC0gKiBSRVRVUk4g
VkFMVUVTOiBub25lCj4+ICsgKiBSRVRVUk4gVkFMVUVTOgo+PiArICrCoCAwwqDCoMKgwqDCoMKg
wqAgLSBzdWNjZXNzCj4+ICsgKsKgwqDCoCAtRUlPwqDCoMKgIC0gaS9vIGVycm9yCj4+IMKgwqAg
Ki8KPj4gwqAgc3RhdGljIGludCBkYkpvaW4oZG10cmVlX3QgKiB0cCwgaW50IGxlYWZubywgaW50
IG5ld3ZhbCkKPj4gwqAgewo+PiBAQCAtMjc1Nyw2ICsyNzU5LDEwIEBAIHN0YXRpYyBpbnQgZGJK
b2luKGRtdHJlZV90ICogdHAsIGludCBsZWFmbm8sIAo+PiBpbnQgbmV3dmFsKQo+PiDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAqIGdldCB0aGUgYnVkZHkgc2l6ZSAobnVtYmVyIG9mIHdvcmRzIGNvdmVy
ZWQpIG9mCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgICogdGhlIG5ldyB2YWx1ZS4KPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqAgKi8KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKChuZXd2YWwgLSB0
cC0+ZG10X2J1ZG1pbikgPiBCVURNSU4pCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVy
biAtRUlPOwo+PiArCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBidWRzeiA9IEJVRFNJWkUobmV3dmFs
LCB0cC0+ZG10X2J1ZG1pbik7Cj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCAvKiB0cnkgdG8gam9p
bi4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMt
ZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2Uu
bmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNj
dXNzaW9uCg==
