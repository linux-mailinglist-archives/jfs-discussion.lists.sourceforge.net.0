Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 52758CABA0F
	for <lists+jfs-discussion@lfdr.de>; Sun, 07 Dec 2025 22:09:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A8LSIluUCgdPcHGVEs6rZ51fd8aUyCBuMOLN6YPTcKk=; b=TPw92mFRDdeBZp5v13F2q0tS0R
	i6uV+tzlRSHK3RSSnSvY8R4qX686/AROZaT3+9bPN7bLyxW0/Oxga1gYgDcuDqJu1bk9a1Xx4y4lC
	GRyvoGAFEADHbbj91sCy3AVujc2dRNTZoKsK5qvG5ANJEfRrCE2UBsu2UaDGsl5o7HFs=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vSLzZ-0002DX-Gc;
	Sun, 07 Dec 2025 21:08:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <kartikey406@gmail.com>) id 1vS8gP-00018Y-12
 for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xI0EvnbZA/tQl8tVwd5y/1wfMvCqCNEaI5+ylSKQGWY=; b=YZsANpBpoOnEH9Y12wbAQsQh4W
 HRL7rVPYeymOgpj6k4Xcy+jQAN26G15Qr2FjbgrRk/xNzXsnG2X4Aa4/uJp8VXzwbcNCXivtZtpxA
 hqj0/eZsHhmDwr2riOZDzdz3aNe48hmsavVoSjddMcJIS86OlSUcmtFIAw39bI5Vlv5k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xI0EvnbZA/tQl8tVwd5y/1wfMvCqCNEaI5+ylSKQGWY=; b=RbCPrpOrgcwDqxP6VO7ycl4Tpp
 zwjt/W5n+jA6ISjVheN2+qaGMLVA5r2SnEUb1Rew7j0cPATHUWryn8rFf8vdCDz2hYd6hoPuMhh+4
 OwGZBT0Cej8cHJUgFkmRJhQovLeAFr/uzZXGj+Y42g7I9Z4dUn3ta+bi/4iysd5njxjs=;
Received: from mail-yx1-f49.google.com ([74.125.224.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vS8gO-0004Sl-9u for jfs-discussion@lists.sourceforge.net;
 Sun, 07 Dec 2025 06:55:48 +0000
Received: by mail-yx1-f49.google.com with SMTP id
 956f58d0204a3-641e4744e59so3354313d50.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 06 Dec 2025 22:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1765090537; x=1765695337; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xI0EvnbZA/tQl8tVwd5y/1wfMvCqCNEaI5+ylSKQGWY=;
 b=HrZvd1xkVX/q2pxIpPfrviopV5MUtIFx5Ynw1KaBT+ToWRnbsSfX1xQwhxc8BU96hJ
 alfVD0BkAZebm0d6nPVzSzeN0lbW0tuAaG1vFfPjmKpy6Lpsa2b0rPGodqjcu9Bbw5ns
 oz6TIORXnvNkfJlgNP+VAPZTG5un0PSvvEIqm4jNZK5X2e7RusI5LcZxX0ttR+zPuZxr
 PNLpr6ahqdROGsyBARaj6RKodo3pk16iMQRXvo5E6Kp4LMCkhMkSsN0AcCOf5W7nRJgQ
 V0cXpzCINwShJ9PWqA4WtBY3KMPXLmKvhc1sCDpNLqUtXNzyx6vFP8sXiLKvbzZK1Uuz
 zlNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765090537; x=1765695337;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xI0EvnbZA/tQl8tVwd5y/1wfMvCqCNEaI5+ylSKQGWY=;
 b=o+VJZ+xfIaakZeoLsbns3x7Te+sOpxyUjJQlPkkS6sumbBmrYV1ZObZIM+zZLXvc7M
 jReZYd1KaOzQBCbsF2mD3IhNzCwNIPKzB+J3Aa7O9AG08yycIcL9M0Rx6PNlaGmnjJ0u
 Iw1+5ZD5pF88JBPPmDlG5USIyOiBY+QN+rm85Gpl+6ceCRWX3xCz1aBGMtjlEmwDRwoD
 HQuS1eKft4G530auegoUl6IFhgoKbKU7ekOLhnQhwodumVVIc2RPKySKGsnxGj3aNyCx
 OjRwx739t82NQzM7+YeN894GkXjk/aZ7dSUDsWWXfjlDZYQHAgks1kww/SAOhQnQLaiX
 n71g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWnGbfXfggEIcSfeprnDQGZSivac29bjR9rIFBuTRH67dMnkcar97z8x3pYdhW1f4TD8OYA+juMXUfCtkmROA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxchDcMShL1DJsX/VwwuvRtNNvM31YxKXozBPJrx/qjwd8N3ijI
 ZkY9T+vd7qa7asDXuK3ClP561qqBvMXqfdSX6oJ9dySvfgN/QfN9ANNZsbliBiFRbMI/AASGv3h
 pvJ5UcKVe6WlJBDazS3Autos6C87WPSE=
X-Gm-Gg: ASbGncs+YvRgjLoGDZrBlPDJqMl/cLaj+ngTgPtsiWlaChz724BhPwfSYR+mAtbNmut
 Vjhbft/ZKkpwWZ2lunJ4QYNbd71KjyYmGbn6j4bKGG4QpwWGmCH2sxSIs2PRs2BZlDHIyZ7NNa0
 RqDRSHAAtPF2z7Zc1geB4vJpK6esVz3IGt471jPbyuUu5qTNEtXY864/aPC4BM4ykNgqK3nz9hr
 vKr0UrpAWUNT8YeZIjZE/z3cQxeXzY7i5aj87Bc4mpT5lCh5yruw4X+1mFp2rzueAWPyC8+utdc
 Lc3rr73clr839G0kc7BuQLq4jJo/uQlCk8iO3G4Q3+2IyNw8RldngxDGNH9X
X-Google-Smtp-Source: AGHT+IF2hSZd0NbJvebvwNpRv5gutetjkNYf5sMlIwE09x3lXCg6zvwrma16AoxLpveFALvnD7eUjEbKEE3HKIUtTJs=
X-Received: by 2002:a05:690e:24db:b0:643:2169:d6c4 with SMTP id
 956f58d0204a3-6444e7bd87emr2686609d50.66.1765090537482; Sat, 06 Dec 2025
 22:55:37 -0800 (PST)
MIME-Version: 1.0
References: <20251207065134.2610956-1-kartikey406@gmail.com>
In-Reply-To: <20251207065134.2610956-1-kartikey406@gmail.com>
Date: Sun, 7 Dec 2025 12:25:26 +0530
X-Gm-Features: AQt7F2oCxtVrMHoMieSrt8W3_g7PLAV-bb58_nfxx16bFxFl4NmPTMCCQEMiIKU
Message-ID: <CADhLXY7Za9F5+-h35+7QFJq23LUZyYxEfMhq2NTH1DfiDm4S+A@mail.gmail.com>
To: shaggy@kernel.org, brauner@kernel.org
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Dec 7, 2025 at 12:21 PM Deepanshu Kartikey wrote:
 > > When reusing transaction locks for DTREE operations, the index field >
 may contain stale values from previous operations, causing assert [...] 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [kartikey406(at)gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [kartikey406(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [74.125.224.49 listed in wl.mailspike.net]
X-Headers-End: 1vS8gO-0004Sl-9u
X-Mailman-Approved-At: Sun, 07 Dec 2025 21:08:29 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix directory tree corruption in
 dtSplitRoot()
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
From: Deepanshu Kartikey via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Deepanshu Kartikey <kartikey406@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, mjguzik@gmail.com,
 syzbot+a099d674daa27a9272db@syzkaller.appspotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuLCBEZWMgNywgMjAyNSBhdCAxMjoyMeKAr1BNIERlZXBhbnNodSBLYXJ0aWtleQo8a2Fy
dGlrZXk0MDZAZ21haWwuY29tPiB3cm90ZToKPgo+IFdoZW4gcmV1c2luZyB0cmFuc2FjdGlvbiBs
b2NrcyBmb3IgRFRSRUUgb3BlcmF0aW9ucywgdGhlIGluZGV4IGZpZWxkCj4gbWF5IGNvbnRhaW4g
c3RhbGUgdmFsdWVzIGZyb20gcHJldmlvdXMgb3BlcmF0aW9ucywgY2F1c2luZyBhc3NlcnRpb24K
PiBmYWlsdXJlcyBpbiBkdFNwbGl0Um9vdCgpOgo+Cj4gICBBU1NFUlQoZHRsY2stPmluZGV4ID09
IDApCj4KPiBUaGlzIHJlc3VsdHMgaW4ga2VybmVsIGNyYXNoZXMgbGlrZToKPgo+ICAga2VybmVs
IEJVRyBhdCBmcy9qZnMvamZzX2R0cmVlLmM6MTk0MiEKPiAgIENhbGwgVHJhY2U6Cj4gICAgZHRT
cGxpdFJvb3QrMHgxNjk0LzB4MTZjMCBmcy9qZnMvamZzX2R0cmVlLmM6MTk0Mgo+ICAgIGR0U3Bs
aXRVcCBmcy9qZnMvamZzX2R0cmVlLmM6MTI0NCBbaW5saW5lXQo+ICAgIGR0SW5zZXJ0KzB4MjUy
NS8weDVmNDAgZnMvamZzL2pmc19kdHJlZS5jOjg3MQo+ICAgIGpmc19jcmVhdGUrMHg2YzgvMHhh
ODAgZnMvamZzL25hbWVpLmM6MTM3Cj4KPiBUaGUgYnVnIG9jY3VycyBiZWNhdXNlIHR4TG9jaygp
IGhhcyBtdWx0aXBsZSBjb2RlIHBhdGhzIGZvciBsb2NrCj4gYWNxdWlzaXRpb246Cj4KPiAxLiBG
cmVzaCBhbGxvY2F0aW9uIChhbGxvY2F0ZUxvY2spIC0gY29ycmVjdGx5IGluaXRpYWxpemVzIGlu
ZGV4IHRvIDAKPiAyLiBMb2NrIHJldXNlIChzYW1lIHRyYW5zYWN0aW9uKSAtIHNraXBzIGluaXRp
YWxpemF0aW9uCj4gMy4gQW5vbnltb3VzIGxvY2sgYWNxdWlzaXRpb24gLSBza2lwcyBpbml0aWFs
aXphdGlvbgo+Cj4gUGF0aHMgMiBhbmQgMyBqdW1wIGRpcmVjdGx5IHRvIHRoZSBncmFudExvY2sg
bGFiZWwsIGJ5cGFzc2luZyB0aGUKPiBpbmRleCBpbml0aWFsaXphdGlvbi4gV2hlbiBkdFNwbGl0
Um9vdCgpIGlzIGNhbGxlZCBtdWx0aXBsZSB0aW1lcwo+IHdpdGhpbiBhIGJhdGNoZWQgdHJhbnNh
Y3Rpb24gKHdoaWNoIEpGUyB1c2VzIGZvciBwZXJmb3JtYW5jZSksIGl0IG1heQo+IHJlY2VpdmUg
YSByZXVzZWQgbG9jayB3aXRoIGluZGV4PTMgZnJvbSBhIHByZXZpb3VzIG9wZXJhdGlvbiBpbnN0
ZWFkCj4gb2YgdGhlIGV4cGVjdGVkIGluZGV4PTAuCj4KPiBFeGFtcGxlIHNlcXVlbmNlOgo+ICAg
VHJhbnNhY3Rpb24gdGlkPTE6Cj4gICAgIC0gRmlyc3QgZHRTcGxpdFJvb3Q6IGdldHMgZnJlc2gg
bG9jaywgaW5kZXg9MCDinJMKPiAgICAgLSBNb2RpZmllcyBlbnRyaWVzLCBpbmRleCBiZWNvbWVz
IDMKPiAgICAgLSBMb2NrIHJldHVybmVkIHRvIHBvb2wgYnV0IG5vdCBmcmVlZAo+Cj4gICBUcmFu
c2FjdGlvbiB0aWQ9MSAoY29udGludWVzKToKPiAgICAgLSBTZWNvbmQgZHRTcGxpdFJvb3Q6IHJl
dXNlcyBzYW1lIGxvY2sKPiAgICAgLSBpbmRleCBzdGlsbCA9IDMgKHN0YWxlIHZhbHVlKSDinJcK
PiAgICAgLSBBU1NFUlQoaW5kZXggPT0gMCkgZmFpbHMg4oaSIGNyYXNoCj4KPiBGaXggYnkgcmVz
ZXR0aW5nIGR0bGNrLT5pbmRleCB0byAwIGF0IHRoZSBncmFudExvY2sgbGFiZWwsIGJ1dCBvbmx5
Cj4gZm9yIG9wZXJhdGlvbnMgd2l0aCB0aGUgdGxja05FVyBmbGFnIHNldC4gVGhpcyBlbnN1cmVz
Ogo+Cj4gLSBOZXcgcGFnZXMgKGxpa2UgZHRTcGxpdFJvb3QpIHN0YXJ0IHdpdGggY2xlYW4gc3Rh
dGUgKGluZGV4PTApCj4gLSBFeGlzdGluZyBwYWdlcyBwcmVzZXJ2ZSBhY2N1bXVsYXRlZCBjaGFu
Z2VzIHdpdGhpbiBhIHRyYW5zYWN0aW9uCj4gLSBObyBwZXJmb3JtYW5jZSBpbXBhY3QgKG9ubHkg
YWZmZWN0cyBuZXcgcGFnZSBvcGVyYXRpb25zKQo+Cj4gVGhlIHRsY2tORVcgZmxhZyBpcyB1c2Vk
IGJ5IGR0U3BsaXRSb290KCkgd2hlbiBjcmVhdGluZyBhIG5ldyByb290Cj4gcGFnZSwgbWFraW5n
IHRoaXMgZml4IHRhcmdldGVkIHRvIHRoZSBleGFjdCBzY2VuYXJpbyB0aGF0IHJlcXVpcmVzCj4g
aW5kZXg9MC4KPgo+IFJlcG9ydGVkLWJ5OiBzeXpib3QrYTA5OWQ2NzRkYWEyN2E5MjcyZGJAc3l6
a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+IENsb3NlczogaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20vYnVnP2V4dGlkPWEwOTlkNjc0ZGFhMjdhOTI3MmRiCj4gU2lnbmVkLW9mZi1ieTogRGVl
cGFuc2h1IEthcnRpa2V5IDxrYXJ0aWtleTQwNkBnbWFpbC5jb20+Cj4gLS0tCj4gIGZzL2pmcy9q
ZnNfdHhubWdyLmMgfCAxMSArKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2ZzL2pmcy9qZnNfdHhubWdyLmMgYi9mcy9qZnMvamZz
X3R4bm1nci5jCj4gaW5kZXggYzE2NTc4YWYzYTc3Li41Y2UyZmMxN2Q5NjcgMTAwNjQ0Cj4gLS0t
IGEvZnMvamZzL2pmc190eG5tZ3IuYwo+ICsrKyBiL2ZzL2pmcy9qZnNfdHhubWdyLmMKPiBAQCAt
ODExLDYgKzgxMSwxNyBAQCBzdHJ1Y3QgdGxvY2sgKnR4TG9jayh0aWRfdCB0aWQsIHN0cnVjdCBp
bm9kZSAqaXAsIHN0cnVjdCBtZXRhcGFnZSAqIG1wLAo+ICAgICAgICAgICogdXBkYXRlIHRsb2Nr
IHZlY3Rvcgo+ICAgICAgICAgICovCj4gICAgICAgIGdyYW50TG9jazoKPiArICAgICAgIC8qCj4g
KyAgICAgICAgKiBSZXNldCBpbmRleCBmb3IgbmV3IERUUkVFIGxvY2tzIHRvIGVuc3VyZSBjbGVh
biBzdGF0ZS4KPiArICAgICAgICAqIFdoZW4gbG9ja3MgYXJlIHJldXNlZCwgaW5kZXggbWF5IGNv
bnRhaW4gc3RhbGUgdmFsdWVzIGZyb20KPiArICAgICAgICAqIHByZXZpb3VzIG9wZXJhdGlvbnMu
IE9wZXJhdGlvbnMgbGlrZSBkdFNwbGl0Um9vdCgpIGV4cGVjdAo+ICsgICAgICAgICogaW5kZXgg
dG8gYmUgMCB3aGVuIGNyZWF0aW5nIG5ldyBwYWdlcyAodGxja05FVyBmbGFnKS4KPiArICAgICAg
ICAqLwo+ICsgICAgICAgaWYgKCh0eXBlICYgdGxja0RUUkVFKSAmJiAodHlwZSAmIHRsY2tORVcp
KSB7Cj4gKyAgICAgICAgICAgICAgIHN0cnVjdCBkdF9sb2NrICpkdGxjayA9IChzdHJ1Y3QgZHRf
bG9jayAqKSZ0bGNrLT5sb2NrOwo+ICsKPiArICAgICAgICAgICAgICAgZHRsY2stPmluZGV4ID0g
MDsKPiArICAgICAgIH0KPiAgICAgICAgIHRsY2stPnR5cGUgfD0gdHlwZTsKPgo+ICAgICAgICAg
cmV0dXJuIHRsY2s7Cj4gLS0KPiAyLjQzLjAKPgoKUGxlYXNlIGRpc3JlZ2FyZCB0aGlzIHBhdGNo
LiBBcywgIGl0IGNvbnRhaW5zIHNwZWNpYWwgY2hhcmFjdGVycy4gSQp3aWxsIGJlIHJlc2VuZGlu
ZyB0aGUgcGF0Y2ggYWdhaW4KClRoYW5rcwoKRGVlcGFuc2h1CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0
Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJj
ZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
