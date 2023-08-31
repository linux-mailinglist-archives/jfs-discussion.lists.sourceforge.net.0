Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CCD78F01F
	for <lists+jfs-discussion@lfdr.de>; Thu, 31 Aug 2023 17:19:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qbjSA-000445-9J;
	Thu, 31 Aug 2023 15:19:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qbjS8-00043z-LS
 for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 15:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T/oC9BzvxaceMGHbIWoQh4iOvX8/1tUpbJQYA6I/O+Y=; b=FemaeOGDGhGah6A9fpQ0YVc1en
 +i58M85/tupOPpJICx9jKeESNeKttRpTQk1S+fFm3q/89pcc4WJdGfcbxlSB/gAR6a+Mb/l8fX6Cx
 YpjRaaxuupy/yR77QpUB6nfKcy0xt7MxVUw7W5B1xomtZXr3lecUaHcEFQaKgJV5VXEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=T/oC9BzvxaceMGHbIWoQh4iOvX8/1tUpbJQYA6I/O+Y=; b=fSjm7/2x1a8+UnMSSqn9thSggG
 sFXnbsrwaRg764m5jdsGv4q5R4rrBVPoJSFwzUUzdJUd3UJZrRrGEz70xmRcsHmr0DO57X1DCXhK+
 8ikk9reVwYXylbN16jGTCrO23/qejl8gLaB4vIK+jL3WKWll9D79IfE0snreq3eXSGaQ=;
Received: from mail-pl1-f175.google.com ([209.85.214.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qbjS5-0004fq-4R for jfs-discussion@lists.sourceforge.net;
 Thu, 31 Aug 2023 15:19:25 +0000
Received: by mail-pl1-f175.google.com with SMTP id
 d9443c01a7336-1c22103bce7so6763165ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 31 Aug 2023 08:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693495155; x=1694099955; darn=lists.sourceforge.net;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=T/oC9BzvxaceMGHbIWoQh4iOvX8/1tUpbJQYA6I/O+Y=;
 b=OGaVyM6TKyla0NsfL7jIgp1a4vAos2YN/IMNCTcX5TrImG5TOpXWVvU+HybYTLIPs6
 rzWgAVtG4IEb/VGL9mtYCUvkjwtblb37p1kDW/jZ2ANP1wM2ngOGb6ze4VI3lCn5Niy/
 FB4yvDipSKXMBHVlHteYvDGz9dO0JMSmCcQITA3WJMSH5AmpgRq4m+ntC2QtfAYy91gS
 1JD25u3XiRHgUs+mmiwmgXSCu2+x9nbfhPQyh1/hYsjNZjdTiYXKz/Hq0WxG87/ncbJ4
 lknA/UUlj5dfixlU/xU8/kJUE75vnDTKQRtXZt3fJve8bzr86mJQK05C7vOa70osowLN
 B1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693495155; x=1694099955;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=T/oC9BzvxaceMGHbIWoQh4iOvX8/1tUpbJQYA6I/O+Y=;
 b=fFgRT4FoI0KpeKHQN0mQqcP65am3XSLbPPyCqJUGMbiQJUU+qmWvkKDvugKodj5kBb
 JCG6g2br3eV8c7u+CVxe12wLl+1ckc8znzHVuuPkg8qEG4liSlFKkDo2PGcVEk8bokvp
 2XsKyS8aNCVo7aaWos1tXuciRLChPFzOxsF4UBhCXNbbLJohKqbNeqEHgXmoYs2WUkA1
 DuJsyzCebblQ4fcyiJn94Uf/KWnADBbW6BuOXlQy/DWvRx253SbKj6+z0wXCI9DprHFz
 2VOYPO9jZ55/YO4QdsaE8PdFANHtfPujgT9LaqtLYfwOH5a39yeJeIRc3d7+Wuzli2T2
 HZyg==
X-Gm-Message-State: AOJu0YwnXwkpco2WrDEvXMuX/yECszsdWTHvHS8pFD3is1865ePfh1KY
 E+QJaPvOKfr53sydPT/2mSY=
X-Google-Smtp-Source: AGHT+IGIS7G4ToDoe5lC2A/vLDNcKjVwvaUH594eytpS3UknzaXcdyY+egAjDfEufcTx0oRO6EbQFw==
X-Received: by 2002:a17:902:e744:b0:1bb:b226:52a0 with SMTP id
 p4-20020a170902e74400b001bbb22652a0mr13952plf.44.1693495154610; 
 Thu, 31 Aug 2023 08:19:14 -0700 (PDT)
Received: from [10.0.2.15] ([103.37.201.174]) by smtp.gmail.com with ESMTPSA id
 ja20-20020a170902efd400b001bdc6ca748esm1386625plb.185.2023.08.31.08.19.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Aug 2023 08:19:14 -0700 (PDT)
Message-ID: <ae6ce935-96eb-3d40-f252-54fff7eb0ea9@gmail.com>
Date: Thu, 31 Aug 2023 20:49:09 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Dave Kleikamp <dave.kleikamp@oracle.com>, shaggy@kernel.org,
 liushixin2@huawei.com
References: <20230829165244.460154-1-ghandatmanas@gmail.com>
 <e62dbf53-9d74-45e5-b44e-53140672b8b5@oracle.com>
In-Reply-To: <e62dbf53-9d74-45e5-b44e-53140672b8b5@oracle.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  I was wondering if we could implement a get_tree_size macro
    wherein  we could find the tree size so that we can do the comparison. SInce
    the tp->dmt_stree is an array we can get its size and fix the [...] 
 
 Content analysis details:   (-0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [103.37.201.174 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ghandatmanas[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.175 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.175 listed in list.dnswl.org]
 -3.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1qbjS5-0004fq-4R
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SSB3YXMgd29uZGVyaW5nIGlmIHdlIGNvdWxkIGltcGxlbWVudCBhIGdldF90cmVlX3NpemUgbWFj
cm8gd2hlcmVpbsKgIHdlIApjb3VsZCBmaW5kIHRoZSB0cmVlIHNpemUgc28gdGhhdCB3ZSBjYW4g
ZG8gdGhlIGNvbXBhcmlzb24uIFNJbmNlIHRoZSAKdHAtPmRtdF9zdHJlZSBpcyBhbiBhcnJheSB3
ZSBjYW4gZ2V0IGl0cyBzaXplIGFuZCBmaXggdGhlIG91dCBvZiBib3VuZHMuIApXb3VsZCB0aGlz
IHRoaW5nIHdvcms/CgpPbiAzMC8wOC8yMyAwMDowOCwgRGF2ZSBLbGVpa2FtcCB3cm90ZToKPiBU
aGlzIHdvbid0IHdvcmsuIGRiRmluZExlYWYoKSBjYW4gYmUgY2FsbGVkIGZyb20gZGJGaW5kQ3Rs
KCkgd2l0aCAKPiBzdHJ1Y3QgZG1hcGN0bCB3aG9zZSBzdHJlZSBpbmRleCBjYW4gYmUgYXMgaGln
aCBhcyBDVExUUkVFU0laRSB3aGljaCAKPiBpcyBsYXJnZXIgdGhhbiBUUkVFU0laRS4gQSBjaGVj
ayBhZ2FpbnN0IENUTFRSRUVTSVpFIG1pZ2h0IGJlIGJldHRlciAKPiB0aGFuIG5vdGhpbmcgYXQg
YWxsIGJ1dCB3b24ndCBuZWNlc3NhcmlseSBkZXRlY3QgYW4gb3ZlcmZsb3cuIAo+IEN1cnJlbnRs
eSwgZGJGaW5kTGVhZiBkb2Vzbid0IGhhdmUgYW55dGhpbmcgdG8gdGVsbCBpdCB3aGljaCB0cmVl
IGl0IAo+IGlzIHdvcmtpbmcgb24uCj4KPiBXZSBjb3VsZCBwYXNzIGluIHRoZSB0cmVlc2l6ZSBh
cyBhbiBhcmd1bWVudCB0byBkYkZpbmRDdGwoKSBpZiB3ZSAKPiBjYW4ndCBjb21lIHVwIHdpdGgg
c29tZXRoaW5nIHNpbXBsZXIuCj4KPiBTaGFnZ3kKPgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBNYW5h
cyBHaGFuZGF0IDxnaGFuZGF0bWFuYXNAZ21haWwuY29tPgo+PiBSZXBvcnRlZC1ieTogc3l6Ym90
K2FlYTFhZDkxZTg1NGQwYTgzZTA0QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPj4gQ2xvc2Vz
OiBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS9idWc/ZXh0aWQ9YWVhMWFkOTFlODU0ZDBh
ODNlMDQKPj4gLS0tCj4+IMKgIGZzL2pmcy9qZnNfZG1hcC5jIHwgNCArKysrCj4+IMKgIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNf
ZG1hcC5jIGIvZnMvamZzL2pmc19kbWFwLmMKPj4gaW5kZXggYTE0YTBmMThhNGM0Li41YWYxN2Iy
Mjg3YmUgMTAwNjQ0Cj4+IC0tLSBhL2ZzL2pmcy9qZnNfZG1hcC5jCj4+ICsrKyBiL2ZzL2pmcy9q
ZnNfZG1hcC5jCj4+IEBAIC0yOTQ4LDYgKzI5NDgsMTAgQEAgc3RhdGljIGludCBkYkZpbmRMZWFm
KGRtdHJlZV90ICogdHAsIGludCBsMm5iLCAKPj4gaW50ICpsZWFmaWR4KQo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAvKiBzdWZmaWNpZW50IGZyZWUgc3BhY2UgZm91bmQuwqAgbW92ZSB0
byB0aGUgbmV4dAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICogbGV2ZWwgKG9yIHF1
aXQgaWYgdGhpcyBpcyB0aGUgbGFzdCBsZXZlbCkuCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKi8KPj4gKwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoeCArIG4gPiBUUkVF
U0laRSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT1NQQzsK
Pj4gKwo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAobDJuYiA8PSB0cC0+ZG10X3N0
cmVlW3ggKyBuXSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
