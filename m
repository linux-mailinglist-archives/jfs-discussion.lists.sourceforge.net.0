Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4BE8D2247
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 May 2024 19:17:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sC0RZ-0001jy-6R;
	Tue, 28 May 2024 17:17:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <llfamsec@gmail.com>) id 1sC0Hr-0000mu-J6
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 17:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wuascPmv0FsjVy5o3keYGCYnkZsZu0Vt8dD5fwe+SQA=; b=DOJZ/WgpEki+JI/a6F7JytGISc
 BQAF3AZawTdyMFw8Y94+Hc4FOLrUg0pZbXDqvLKS+M+jo84w6trA1hCxrAA/1D0uBhEVDMwGZ7mBH
 jCBC6AkxRUZkjlR9GX01KajA+SxSQ2I3Wazt+gLnUuClP+fSHi9Ct2oQdmFaS4XuTbQ0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wuascPmv0FsjVy5o3keYGCYnkZsZu0Vt8dD5fwe+SQA=; b=RrJgPSJERarIJ/EJ+HvD4RoprP
 cUa0mdbOvj8Sx6xpFTblvQDP9xy8z+r8CBztM46BQQlzbI5p/fCX3QxYuNEExALktyHY3toylUZY5
 ePPyJBDQjDekhTykeuAL9HIcHEwvdXKdC8kkiHo3DiC2ZFmNHw/yrw1pt4ITN8hvhMbo=;
Received: from mail-yw1-f170.google.com ([209.85.128.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sC0Hq-0000q7-PQ for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 17:06:58 +0000
Received: by mail-yw1-f170.google.com with SMTP id
 00721157ae682-62a083d7ee9so9411087b3.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 28 May 2024 10:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1716916007; x=1717520807; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wuascPmv0FsjVy5o3keYGCYnkZsZu0Vt8dD5fwe+SQA=;
 b=OL2j3KP2koe92pqYJjTtaud5076m5rKJMI1jLwbAR00qhzvEigufWLsqjKT+1B29i2
 +NZLkDRU38cZfv2GRMLYcOcWph4aXS35dw39jTc4VxZil4uIRkhX5uxZIkQUQ+iZcabY
 yDdGSad/0s6G5AdYgMVMxjiMHr9niYUzMap8ui3LEP14rTEtXJOdo9WVyCpBpd7hbSeE
 2PRfXJfsMH5YOKKFQC1vOTReLtRUxMVYCKDYGjOGcGv1XbDrUh26D4fzlu9WFRguC0VU
 HfbQcPFP7KxXuoQf/MDlV0ShdTCxXqo59obpR6Z6URmToTjnRVBf9Uav15bhvacAOYQq
 BLTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716916007; x=1717520807;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wuascPmv0FsjVy5o3keYGCYnkZsZu0Vt8dD5fwe+SQA=;
 b=LQ5hdTOVCXCxtzg7C21iciWqJesmPOAh7joj+sv0YuNTLbci99U1E2NilCmEjBV056
 CtJ41ojDR5gJGEvQzphaGFvTAQpJISLsMrPiMJGlO7hV6Ejn09hsxytpv0O8agLRRhWF
 UmojPyJsrIHxNShgHj+KE+vH59f0VJ/+NpULc8nu1D8QZhgmaZtwWjtzfypJ8kMJzv+3
 uocbcNYqYNidnWFIpvXj4yXYcSOJvE9U3iJkB5Tl1FfE/j5x4QDdV5wRuX6z6JkzZnhO
 2brJKFAV1BJb6T3n0kw4fZgihhhyNBHD1b4nJxEmENyChQrL9aJym5lsAxy0i7TIp05E
 bjPg==
X-Gm-Message-State: AOJu0YzURkvhFor+bBQrFmfLMqcZuBsVwlNKnXtqoPzfaDG0Hxtqj3fU
 F9n+5C4svQNbpKunRr//+ekKE9MgBVkXRIaMCD5EpBAUTV7ZkZf+OUChAtuTTA1Oj1orTHGlWmV
 12gKR0zvGqHwDWNIBdVoQBGC66tibP9wPyDQo3gju
X-Google-Smtp-Source: AGHT+IGMEcuzs4BOQffPDHDPcDqRuxWBkNgNPRdLVr9YlpOUI8bTzpvnyuqV2dx2x90JKg9W1suVZ3xO1MtUuFhmQio=
X-Received: by 2002:a81:af64:0:b0:61a:b00a:ff9 with SMTP id
 00721157ae682-62a08df7e28mr147871837b3.13.1716916006967; Tue, 28 May 2024
 10:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240528103748.15068-1-llfamsec@gmail.com>
 <464880c5-7e79-4454-813c-4ade41508ac3@oracle.com>
In-Reply-To: <464880c5-7e79-4454-813c-4ade41508ac3@oracle.com>
Date: Wed, 29 May 2024 01:06:34 +0800
Message-ID: <CAEBF3_bkdmn9-Queiec5gDJB1=cELwmsO6+hMhoDRGSnqH5caQ@mail.gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dave Kleikamp 于2024年5月29日周三 00:41写道： > >
    On 5/28/24 5:37AM, lei lu wrote: > > Add a check to make sure jfs_ea don't
    stray beyond valid memory region. > > I don't like the long stac [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [209.85.128.170 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                         [209.85.128.170 listed in sa-trusted.bondedsender.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [llfamsec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC0Hq-0000q7-PQ
X-Mailman-Approved-At: Tue, 28 May 2024 17:16:58 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: don't walk off the end of ealist
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
From: lei lu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: lei lu <llfamsec@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

RGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBvcmFjbGUuY29tPiDkuo4yMDI05bm0NeaciDI5
5pel5ZGo5LiJIDAwOjQx5YaZ6YGT77yaCj4KPiBPbiA1LzI4LzI0IDU6MzdBTSwgbGVpIGx1IHdy
b3RlOgo+ID4gQWRkIGEgY2hlY2sgdG8gbWFrZSBzdXJlIGpmc19lYSBkb24ndCBzdHJheSBiZXlv
bmQgdmFsaWQgbWVtb3J5IHJlZ2lvbi4KPgo+IEkgZG9uJ3QgbGlrZSB0aGUgbG9uZyBzdGFjayB0
cmFjZSBpbiB0aGUgcGF0Y2ggZGVzY3JpcHRpb24uIEknZCByYXRoZXIKPiBoYXZlIGEgZGVzY3Jp
cHRpb24gb2YgdGhlIHByb2JsZW0uIEkgdGhpbmsgdGhlIHByb2JsZW0gaXMgdGhhdCB3ZSBhcmUK
PiBub3QgY2hlY2tpbmcgdGhlIHRoZSBlbnRpcmUgZWEgaXMgd2l0aGluIHRoZSBzaXplIG9mIHRo
ZSBlYWxpc3QuCj4KClRoYW5rcy4gR290IGl0LiBNYXliZSBJIHNob3VsZCBzZW5kIGEgdjIgdmVy
c2lvbi4KCj4gPgo+ID4gWyAgMzEyLjU4Mzg5OV0gQlVHOiBLQVNBTjogc2xhYi11c2UtYWZ0ZXIt
ZnJlZSBpbiBfX2pmc19nZXR4YXR0cisweDJjMC8weDJmMAo+ID4gWyAgMzEyLjU4NDAwOV0gUmVh
ZCBvZiBzaXplIDEgYXQgYWRkciBmZmZmODg4MTA4YWYwMDAwIGJ5IHRhc2sgZ2V0ZmF0dHIvMjMw
Cj4gPiBbICAzMTIuNTg0MDA5XQo+ID4gWyAgMzEyLjU4NDAwOV0gQ1BVOiAwIFBJRDogMjMwIENv
bW06IGdldGZhdHRyIE5vdCB0YWludGVkIDYuOC4yICMxMAo+ID4gWyAgMzEyLjU4NDAwOV0gSGFy
ZHdhcmUgbmFtZTogUUVNVSBTdGFuZGFyZCBQQyAoaTQ0MEZYICsgUElJWCwgMTk5NiksIEJJT1Mg
MS4xNS4wLTEgMDQvMDEvMjAxNAo+ID4gWyAgMzEyLjU4NDAwOV0gQ2FsbCBUcmFjZToKPiA+IFsg
IDMxMi41ODQwMDldICA8VEFTSz4KPiA+IFsgIDMxMi41ODQwMDldICBkdW1wX3N0YWNrX2x2bCsw
eDUwLzB4NzAKPiA+IFsgIDMxMi41ODQwMDldICBwcmludF9yZXBvcnQrMHhjYy8weDYyMAo+ID4g
WyAgMzEyLjU4NDAwOV0gID8gX192aXJ0X2FkZHJfdmFsaWQrMHhjYi8weDMyMAo+ID4gWyAgMzEy
LjU4NDAwOV0gID8gX19qZnNfZ2V0eGF0dHIrMHgyYzAvMHgyZjAKPiA+IFsgIDMxMi41ODQwMDld
ICBrYXNhbl9yZXBvcnQrMHhiMC8weGUwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX2pmc19nZXR4
YXR0cisweDJjMC8weDJmMAo+ID4gWyAgMzEyLjU4NDAwOV0gIF9famZzX2dldHhhdHRyKzB4MmMw
LzB4MmYwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX2RvX3N5c19uZXdsc3RhdCsweDgyLzB4MTAw
Cj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9fX2pmc19nZXR4YXR0cisweDEwLzB4MTAKPiA+
IFsgIDMxMi41ODQwMDldICA/IHZmc19zdGF0eCsweDExMy8weDQ5MAo+ID4gWyAgMzEyLjU4NDAw
OV0gID8gdmZzX2ZzdGF0YXQrMHg3Ny8weGYwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX2RvX3N5
c19uZXdsc3RhdCsweDgyLzB4MTAwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBlbnRyeV9TWVNDQUxM
XzY0X2FmdGVyX2h3ZnJhbWUrMHg2Zi8weDc3Cj4gPiBbICAzMTIuNTg0MDA5XSAgamZzX3hhdHRy
X2dldCsweDNkLzB4NTAKPiA+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X2pmc194YXR0cl9nZXQr
MHgxMC8weDEwCj4gPiBbICAzMTIuNTg0MDA5XSAgX192ZnNfZ2V0eGF0dHIrMHgxMTEvMHgxODAK
PiA+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X19fdmZzX2dldHhhdHRyKzB4MTAvMHgxMAo+ID4g
WyAgMzEyLjU4NDAwOV0gID8ga21hbGxvY190cmFjZSsweGU0LzB4MjgwCj4gPiBbICAzMTIuNTg0
MDA5XSAgPyBsb2NrcmVmX2dldCsweGU2LzB4MWIwCj4gPiBbICAzMTIuNTg0MDA5XSAgaW5vZGVf
ZG9pbml0X3VzZV94YXR0cisweGI1LzB4M2MwCj4gPiBbICAzMTIuNTg0MDA5XSAgaW5vZGVfZG9p
bml0X3dpdGhfZGVudHJ5KzB4NGU0LzB4ZmEwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9t
ZW1wb29sX2ZyZWVfc2xhYisweDEwLzB4MTAKPiA+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X2lu
b2RlX2RvaW5pdF93aXRoX2RlbnRyeSsweDEwLzB4MTAKPiA+IFsgIDMxMi41ODQwMDldICBzZWxp
bnV4X2RfaW5zdGFudGlhdGUrMHgyNy8weDMwCj4gPiBbICAzMTIuNTg0MDA5XSAgc2VjdXJpdHlf
ZF9pbnN0YW50aWF0ZSsweDVhLzB4ZDAKPiA+IFsgIDMxMi41ODQwMDldICBkX3NwbGljZV9hbGlh
cysweDgxLzB4YzQwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyB1bmxvY2tfbmV3X2lub2RlKzB4ODkv
MHhjMAo+ID4gWyAgMzEyLjU4NDAwOV0gIGpmc19sb29rdXArMHgxNWIvMHgxYjAKPiA+IFsgIDMx
Mi41ODQwMDldICA/IF9fcGZ4X2pmc19sb29rdXArMHgxMC8weDEwCj4gPiBbICAzMTIuNTg0MDA5
XSAgPyBkX2FsbG9jKzB4MTc5LzB4MWUwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBkX2FsbG9jX3Bh
cmFsbGVsKzB4NDcyLzB4OWIwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9zZWxpbnV4X2lu
b2RlX3Blcm1pc3Npb24rMHgxMC8weDEwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9kX2Fs
bG9jX3BhcmFsbGVsKzB4MTAvMHgxMAo+ID4gWyAgMzEyLjU4NDAwOV0gID8gX3Jhd19zcGluX2xv
Y2srMHg4MC8weGUwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBsb2NrcmVmX2dldF9ub3RfZGVhZCsw
eGZlLzB4MWYwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9sb2NrcmVmX2dldF9ub3RfZGVh
ZCsweDEwLzB4MTAKPiA+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X21ha2VfdmZzdWlkKzB4MTAv
MHgxMAo+ID4gWyAgMzEyLjU4NDAwOV0gIF9fbG9va3VwX3Nsb3crMHgxOTQvMHgzODAKPiA+IFsg
IDMxMi41ODQwMDldICA/IF9fcGZ4X19fbG9va3VwX3Nsb3crMHgxMC8weDEwCj4gPiBbICAzMTIu
NTg0MDA5XSAgd2Fsa19jb21wb25lbnQrMHgyZWYvMHg1MjAKPiA+IFsgIDMxMi41ODQwMDldICBw
YXRoX2xvb2t1cGF0KzB4MTQ3LzB4NmYwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBrbWVtX2NhY2hl
X2FsbG9jKzB4ZGUvMHgyNTAKPiA+IFsgIDMxMi41ODQwMDldICBmaWxlbmFtZV9sb29rdXArMHgx
YzcvMHg1NTAKPiA+IFsgIDMxMi41ODQwMDldICA/IGthc2FuX3NhdmVfc3RhY2srMHgyNC8weDUw
Cj4gPiBbICAzMTIuNTg0MDA5XSAgPyBrYXNhbl9zYXZlX3RyYWNrKzB4MTQvMHgzMAo+ID4gWyAg
MzEyLjU4NDAwOV0gID8gX19wZnhfZmlsZW5hbWVfbG9va3VwKzB4MTAvMHgxMAo+ID4gWyAgMzEy
LjU4NDAwOV0gID8gaXJxX2V4aXRfcmN1KzB4N2UvMHhiMAo+ID4gWyAgMzEyLjU4NDAwOV0gID8g
c3lzdmVjX2FwaWNfdGltZXJfaW50ZXJydXB0KzB4MzkvMHg4MAo+ID4gWyAgMzEyLjU4NDAwOV0g
ID8gYXNtX3N5c3ZlY19hcGljX3RpbWVyX2ludGVycnVwdCsweDFhLzB4MjAKPiA+IFsgIDMxMi41
ODQwMDldICA/IF9fcGZ4X3JlYWRfaHBldCsweDEwLzB4MTAKPiA+IFsgIDMxMi41ODQwMDldICA/
IHVwZGF0ZV9sb2FkX2F2ZysweDEyNC8weDFmZDAKPiA+IFsgIDMxMi41ODQwMDldICA/IGhydGlt
ZXJfYWN0aXZlKzB4MTg3LzB4MjAwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBydW5fcG9zaXhfY3B1
X3RpbWVycysweGExLzB4NjQwCj4gPiBbICAzMTIuNTg0MDA5XSAgdmZzX3N0YXR4KzB4MTEzLzB4
NDkwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF92ZnNfc3RhdHgrMHgxMC8weDEwCj4gPiBb
ICAzMTIuNTg0MDA5XSAgPyBnZXRuYW1lX2ZsYWdzLnBhcnQuMCsweDFjMi8weDRjMAo+ID4gWyAg
MzEyLjU4NDAwOV0gIHZmc19mc3RhdGF0KzB4NzcvMHhmMAo+ID4gWyAgMzEyLjU4NDAwOV0gIF9f
ZG9fc3lzX25ld2xzdGF0KzB4ODIvMHgxMDAKPiA+IFsgIDMxMi41ODQwMDldICA/IF9fcGZ4X19f
ZG9fc3lzX25ld2xzdGF0KzB4MTAvMHgxMAo+ID4gWyAgMzEyLjU4NDAwOV0gID8gX19kb19zeXNf
cHJsaW1pdDY0KzB4MjRiLzB4NjYwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyBfX3BmeF9fX2RvX3N5
c19wcmxpbWl0NjQrMHgxMC8weDEwCj4gPiBbICAzMTIuNTg0MDA5XSAgPyB0aWNrX3Byb2dyYW1f
ZXZlbnQrMHg3Yi8weDEwMAo+ID4gWyAgMzEyLjU4NDAwOV0gID8gaHJ0aW1lcl9pbnRlcnJ1cHQr
MHg1MTIvMHg2ZTAKPiA+IFsgIDMxMi41ODQwMDldICA/IF9fZG9fc29mdGlycSsweDE4YS8weDU3
NQo+ID4gWyAgMzEyLjU4NDAwOV0gID8gZnByZWdzX2Fzc2VydF9zdGF0ZV9jb25zaXN0ZW50KzB4
N2EvMHhjMAo+ID4gWyAgMzEyLjU4NDAwOV0gIGRvX3N5c2NhbGxfNjQrMHhiMy8weDFiMAo+ID4g
WyAgMzEyLjU4NDAwOV0gIGVudHJ5X1NZU0NBTExfNjRfYWZ0ZXJfaHdmcmFtZSsweDZmLzB4NzcK
PiA+IFsgIDMxMi41ODQwMDldIFJJUDogMDAzMzoweDdmN2Y1MjJlNjljNgo+ID4gWyAgMzEyLjU4
NDAwOV0gQ29kZTogMzQgMGUgMDAgNjQgYzcgMDAgMTYgMDAgMDAgMDAgYjggZmYgZmYgZmYgZmYg
YzMgMGYgMWYgNDAgMDAgNDEgODkgZjggNDggODkgZjcgNDggODkgZDYgNDEgODMgZjggMDEgNzcg
MjkgYjggMDYgMDAgMDAgMDAgMGYgMDUgPDQ4PiAzZCAwMCBmMCBmZiBmZiA3NyAwMiBjMyA5MCA0
OCA4YiAyCj4gPiBbICAzMTIuNTg0MDA5XSBSU1A6IDAwMmI6MDAwMDdmZmY4YzA3NjJjOCBFRkxB
R1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAwMDAwMDAwMDAwMDAwMDA2Cj4gPiBbICAzMTIuNTg0MDA5
XSBSQVg6IGZmZmZmZmZmZmZmZmZmZGEgUkJYOiAwMDAwMDAwMDAwMDAwMDA4IFJDWDogMDAwMDdm
N2Y1MjJlNjljNgo+ID4gWyAgMzEyLjU4NDAwOV0gUkRYOiAwMDAwN2ZmZjhjMDc2MzIwIFJTSTog
MDAwMDdmZmY4YzA3NjMyMCBSREk6IDAwMDA3ZmZmOGMwNzY0MTAKPiA+IFsgIDMxMi41ODQwMDld
IFJCUDogMDAwMDdmZmY4YzA3NjQxMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDEgUjA5OiAwMDAwN2Y3
ZjUyM2NhYmUwCj4gPiBbICAzMTIuNTg0MDA5XSBSMTA6IDAwMDA3ZmZmOGMwNzY0MDAgUjExOiAw
MDAwMDAwMDAwMDAwMjQ2IFIxMjogMDAwMDdmZmY4YzA3NjMyMAo+ID4gWyAgMzEyLjU4NDAwOV0g
UjEzOiAwMDAwMDAwMDAwMDAwMDAwIFIxNDogMDAwMDAwMDAwMDAwMDAwMCBSMTU6IDAwMDAwMDAw
MDAwMDAxMDgKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBsZWkgbHUgPGxsZmFtc2VjQGdtYWlsLmNv
bT4KPiA+IC0tLQo+ID4gICBmcy9qZnMveGF0dHIuYyB8IDIzICsrKysrKysrKysrKysrKysrKyst
LS0tCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9mcy9qZnMveGF0dHIuYyBiL2ZzL2pmcy94YXR0ci5jCj4g
PiBpbmRleCAwZmI3YWZhYzI5OGUuLjEzYjIzZmEyOGRjOCAxMDA2NDQKPiA+IC0tLSBhL2ZzL2pm
cy94YXR0ci5jCj4gPiArKysgYi9mcy9qZnMveGF0dHIuYwo+ID4gQEAgLTc5NSw3ICs3OTUsNyBA
QCBzc2l6ZV90IF9famZzX2dldHhhdHRyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNvbnN0IGNoYXIg
Km5hbWUsIHZvaWQgKmRhdGEsCj4gPiAgICAgICAgICAgICAgICAgICAgICBzaXplX3QgYnVmX3Np
emUpCj4gPiAgIHsKPiA+ICAgICAgIHN0cnVjdCBqZnNfZWFfbGlzdCAqZWFsaXN0Owo+ID4gLSAg
ICAgc3RydWN0IGpmc19lYSAqZWE7Cj4gPiArICAgICBzdHJ1Y3QgamZzX2VhICplYSwgKmVhX2Vu
ZDsKPiA+ICAgICAgIHN0cnVjdCBlYV9idWZmZXIgZWFfYnVmOwo+ID4gICAgICAgaW50IHhhdHRy
X3NpemU7Cj4gPiAgICAgICBzc2l6ZV90IHNpemU7Cj4gPiBAQCAtODE1LDkgKzgxNSwxNiBAQCBz
c2l6ZV90IF9famZzX2dldHhhdHRyKHN0cnVjdCBpbm9kZSAqaW5vZGUsIGNvbnN0IGNoYXIgKm5h
bWUsIHZvaWQgKmRhdGEsCj4gPiAgICAgICAgICAgICAgIGdvdG8gbm90X2ZvdW5kOwo+ID4KPiA+
ICAgICAgIGVhbGlzdCA9IChzdHJ1Y3QgamZzX2VhX2xpc3QgKikgZWFfYnVmLnhhdHRyOwo+ID4g
KyAgICAgZWFfZW5kID0gRU5EX0VBTElTVChlYWxpc3QpOwo+Cj4gTWF5YmUgY2FsbCB0aGlzIGVh
bGlzdF9lbmQuCgpTdXJlLCBpdCdzIG1vcmUgY2xlYXIuCgo+Cj4gPgo+ID4gICAgICAgLyogRmlu
ZCB0aGUgbmFtZWQgYXR0cmlidXRlICovCj4gPiAtICAgICBmb3IgKGVhID0gRklSU1RfRUEoZWFs
aXN0KTsgZWEgPCBFTkRfRUFMSVNUKGVhbGlzdCk7IGVhID0gTkVYVF9FQShlYSkpCj4gPiArICAg
ICBmb3IgKGVhID0gRklSU1RfRUEoZWFsaXN0KTsgZWEgPCBlYV9lbmQ7IGVhID0gTkVYVF9FQShl
YSkpIHsKPiA+ICsgICAgICAgICAgICAgaWYgKHVubGlrZWx5KGVhICsgMSA+IGVhX2VuZCkgfHwK
Pgo+IFdvbid0IHRoZSBhYm92ZSBhbHdheXMgYmUgdHJ1ZSwgc2luY2Ugd2UgZXhpdCB0aGUgbG9v
cCB3aGVuIGVhIGlzIG5vdAo+IGxlc3MgdGhhbiBlYV9lbmQ/Cj4KPiA+ICsgICAgICAgICAgICAg
ICAgIHVubGlrZWx5KE5FWFRfRUEoZWEpID4gZWFfZW5kKSkgewo+Cj4gSWYgdGhlIHN0cnVjdHVy
ZSBpcyBjb3JyZWN0LCBJIGJlbGlldmUgTkVYVF9FQSgpIG9mIHRoZSBsYXN0IGVhIHNob3VsZAo+
IGJlIGV4YWN0bHkgZWFfZW5kLCBzbyB0aGlzIHRlc3QgbWFrZXMgc2Vuc2UsIGJ1dCBpdCBub3Qg
ZXhhY3RseSBjbGVhcgo+IHdoeS4gTWF5YmUgYSBjb21tZW50IHdvdWxkIGhlbHAuCgpBIHdoaWxl
IGFnbywgSSBoYWQgYWxyZWFkeSBzdWJtaXR0ZWQgdGhlIGRldGFpbHMgdG8Kc2VjdXJpdHlAa2Vy
bmVsLm9yZyBpbiB0aGUgcmVwb3J0LiBJdCB0cmF2ZXJzZSBlYSBkZXBlbmRzIG9uCmVhLT5uYW1l
bGVuIGFuZCBlYS0+dmFsdWVsZW4uIEl0IGp1c3QgY2hlY2tzIHN0YXJ0IG9mZnNldCA8CkVORF9F
QUxJU1QoZWFsaXN0KSwgU28gaWYgdGhlIGxhc3QgZWEgaXMgbG9jYXRlZCBhdCB0aGUgZW5kIG9m
IGJsb2NrLgpXZSBjYW4gY2hhbmdlIHZhbHVlbGVuIHRvIHZhbHVlbGVuLTEsIGFuZCBsZWF2ZSAx
IGJ5dGUgb2Ygc3BhY2UuIEluCnRoZSBuZXh0ICwgdGhpcyBzcGFjZSB3aWxsIGJlIGNvbnNpZGVy
ZWQgYXMgdGhlIGVhLiBXaGVuIGFjY2VzcyB0aGUKbWVtYmVyIG9mIHRoaXMgZWEsIGFuIG91dC1v
Zi1ib3VuZCByZWFkIHdpbGwgYmUgdHJpZ2dlcmVkLiBTbyB3ZQpzaG91bGQgYWRkIHNvbWUgY2hl
Y2tzIGJlZm9yZSB2aXNpdGluZyB0aGUgZml4ZWQgbWVtYmVycyBvZiBlYSBpbgpORVhUX0VBIGFu
ZCB2aXNpdGluZyB0aGUgZWEtPm5hbWUuIFRoZSBhYm92ZSBpc3N1ZSBvY2N1cnJlZCBpbiBhCmNy
YWZ0ZWQgaW1hZ2UuCgo+Cj4gPiArICAgICAgICAgICAgICAgICAgICAgc2l6ZSA9IC1FVUNMRUFO
Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPiA+ICsgICAgICAgICAg
ICAgfQo+ID4gKwo+ID4gICAgICAgICAgICAgICBpZiAoKG5hbWVsZW4gPT0gZWEtPm5hbWVsZW4p
ICYmCj4gPiAgICAgICAgICAgICAgICAgICBtZW1jbXAobmFtZSwgZWEtPm5hbWUsIG5hbWVsZW4p
ID09IDApIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICAvKiBGb3VuZCBpdCAqLwo+ID4gQEAg
LTgzMiw2ICs4MzksNyBAQCBzc2l6ZV90IF9famZzX2dldHhhdHRyKHN0cnVjdCBpbm9kZSAqaW5v
ZGUsIGNvbnN0IGNoYXIgKm5hbWUsIHZvaWQgKmRhdGEsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgbWVtY3B5KGRhdGEsIHZhbHVlLCBzaXplKTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBn
b3RvIHJlbGVhc2U7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICsgICAgIH0KPiA+ICAgICAgICAg
bm90X2ZvdW5kOgo+ID4gICAgICAgc2l6ZSA9IC1FTk9EQVRBOwo+ID4gICAgICAgICByZWxlYXNl
Ogo+ID4gQEAgLTg1OSw3ICs4NjcsNyBAQCBzc2l6ZV90IGpmc19saXN0eGF0dHIoc3RydWN0IGRl
bnRyeSAqIGRlbnRyeSwgY2hhciAqZGF0YSwgc2l6ZV90IGJ1Zl9zaXplKQo+Cj4gVGhlIGFib3Zl
IGNvbW1lbnRzIGFwcGx5IHRvIHRoZSBjb2RlIGJlbG93IGFzIHdlbGwuCj4KPiA+ICAgICAgIHNz
aXplX3Qgc2l6ZSA9IDA7Cj4gPiAgICAgICBpbnQgeGF0dHJfc2l6ZTsKPiA+ICAgICAgIHN0cnVj
dCBqZnNfZWFfbGlzdCAqZWFsaXN0Owo+ID4gLSAgICAgc3RydWN0IGpmc19lYSAqZWE7Cj4gPiAr
ICAgICBzdHJ1Y3QgamZzX2VhICplYSwgKmVhX2VuZDsKPiA+ICAgICAgIHN0cnVjdCBlYV9idWZm
ZXIgZWFfYnVmOwo+ID4KPiA+ICAgICAgIGRvd25fcmVhZCgmSkZTX0lQKGlub2RlKS0+eGF0dHJf
c2VtKTsKPiA+IEBAIC04NzQsOSArODgyLDE2IEBAIHNzaXplX3QgamZzX2xpc3R4YXR0cihzdHJ1
Y3QgZGVudHJ5ICogZGVudHJ5LCBjaGFyICpkYXRhLCBzaXplX3QgYnVmX3NpemUpCj4gPiAgICAg
ICAgICAgICAgIGdvdG8gcmVsZWFzZTsKPiA+Cj4gPiAgICAgICBlYWxpc3QgPSAoc3RydWN0IGpm
c19lYV9saXN0ICopIGVhX2J1Zi54YXR0cjsKPiA+ICsgICAgIGVhX2VuZCA9IEVORF9FQUxJU1Qo
ZWFsaXN0KTsKPiA+Cj4gPiAgICAgICAvKiBjb21wdXRlIHJlcXVpcmVkIHNpemUgb2YgbGlzdCAq
Lwo+ID4gLSAgICAgZm9yIChlYSA9IEZJUlNUX0VBKGVhbGlzdCk7IGVhIDwgRU5EX0VBTElTVChl
YWxpc3QpOyBlYSA9IE5FWFRfRUEoZWEpKSB7Cj4gPiArICAgICBmb3IgKGVhID0gRklSU1RfRUEo
ZWFsaXN0KTsgZWEgPCBlYV9lbmQ7IGVhID0gTkVYVF9FQShlYSkpIHsKPiA+ICsgICAgICAgICAg
ICAgaWYgKHVubGlrZWx5KGVhICsgMSA+IGVhX2VuZCkgfHwKPiA+ICsgICAgICAgICAgICAgICAg
IHVubGlrZWx5KE5FWFRfRUEoZWEpID4gZWFfZW5kKSkgewo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIHNpemUgPSAtRVVDTEVBTjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIHJlbGVh
c2U7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICAgICAgICAgICAgICAgaWYgKGNhbl9s
aXN0KGVhKSkKPiA+ICAgICAgICAgICAgICAgICAgICAgICBzaXplICs9IG5hbWVfc2l6ZShlYSkg
KyAxOwo+ID4gICAgICAgfQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vamZzLWRpc2N1c3Npb24K
