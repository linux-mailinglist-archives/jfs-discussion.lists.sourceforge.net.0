Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B94CA66AB65
	for <lists+jfs-discussion@lfdr.de>; Sat, 14 Jan 2023 13:41:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pGfpr-00007k-KS;
	Sat, 14 Jan 2023 12:40:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adilger@dilger.ca>) id 1pGfpq-00007a-J9
 for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Jan 2023 12:40:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:In-Reply-To:Cc:References:Message-Id:Date:
 Subject:Mime-Version:From:Content-Transfer-Encoding:Content-Type:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R+o3aaAuolf2/uRomR6WtHUNv1uFhVkDXFlfeWDDe0E=; b=EnaxXWDdeBgv6jd65CCozwugEB
 TWU8EK6M59j6/z5cTk3vKuyFnEiNCcfIYNiijjPWlx5F1mzdbrb18fDzAF99Ilic1wX/dpu1afMiW
 y6uEIW8QSwETR/x6qKka50xP56iKopWYOH4ySiYc7wEd+HdFHFKc8VO/WcH2UJTgFGyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:In-Reply-To:Cc:References:Message-Id:Date:Subject:Mime-Version:From:
 Content-Transfer-Encoding:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=R+o3aaAuolf2/uRomR6WtHUNv1uFhVkDXFlfeWDDe0E=; b=jczTxinktQehA4vry5/DghQJcC
 zz2e5x67v2xEYpI7AdgXN/7n2mb2FBxn9ZaQeNJlo+FH2sXRF3jv/2VOyJluQQ+ca5zGOKFSDdIPR
 KZ9zIHW8K9rI8SKaHR8VAcCCivFJzwNzuBsdPnSRynPYY6Amk6kuiimn6ZqfXaBuFwyI=;
Received: from mail-io1-f51.google.com ([209.85.166.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pGfpk-0000ou-KW for jfs-discussion@lists.sourceforge.net;
 Sat, 14 Jan 2023 12:40:33 +0000
Received: by mail-io1-f51.google.com with SMTP id d22so2812750iof.5
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 14 Jan 2023 04:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dilger-ca.20210112.gappssmtp.com; s=20210112;
 h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
 :from:content-transfer-encoding:from:to:cc:subject:date:message-id
 :reply-to; bh=R+o3aaAuolf2/uRomR6WtHUNv1uFhVkDXFlfeWDDe0E=;
 b=XemS6r+6V5QQxqi/VYBPu+Lkm/RatFiqztHVe/R15ZAk7LT8pwa76EPm5b+Z2kZTgT
 uD1qgKoMk00wAGyZoMZ/6n8G9FPxV4Sk6UztEG19nU8cMqhywx51wzrDMhvnICL2sCjB
 qw9yjagJV0sLJJsw3jGFCNk2G9IPiTLfbYi8ZF2j2QclHATEg0M+clTiG9SiHe7tjRNd
 CjM3afg0SfE316bT/q0VJoVjyV6bc/y8cvjksB3/JJ3bwIQt2E2Zm5+hhvEmUgKecYy8
 rWzBafdXsOVoFi36U1BWtVkivfZtoEN3nXdzSDa8PFkUndYxvKzstjDui5P9+Yse5ylw
 rrQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
 :from:content-transfer-encoding:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=R+o3aaAuolf2/uRomR6WtHUNv1uFhVkDXFlfeWDDe0E=;
 b=7Xm1dr0oNQubpoAONozS0m/pLDTAQQa4R0Daz0r4sjp263FEbuaYu9Jg1jpDqaL39r
 +FUCHt2BOzruvWwvlTAEpNvlxideKholFBheRj4sBaED2UCV6xQXIFexFQG0bRNe1fUf
 0jwXNX649KEwb+W8AJ031WHkmpHLfw2xPgHBYcxt32SfN+D4k0Q2NhznBCoJyqlw1+LE
 hIKfHuqm79Dl3UdUAoXzxs3SDBwtC7erbZ2Kp5ygNseREBQsbx1jjNLJhUOH+mfkftws
 0MKIMERRUFUksOeyRo8d5rKNd5FW4WqYWO2X3znx9sgiKRswmZHpfLaQOzwcfB3MuNy6
 rElg==
X-Gm-Message-State: AFqh2kpWG7/ufnfiFiiS0lfIMr22lGFNAkdaKSB7rqnnz/6xruRc7aSZ
 CkZwbx93K22SPO1V6M9ZYn28njiqL8izUJqCMP4=
X-Google-Smtp-Source: AMrXdXtK5wXM0KcfuPhTmm7EQ3X4jDr1pU5000kNB7pAPFaSlyJ4FnFnuAIrM36BhM9z2aR9TWyBcQ==
X-Received: by 2002:a17:90b:1958:b0:227:1d0e:3696 with SMTP id
 nk24-20020a17090b195800b002271d0e3696mr20742421pjb.11.1673698161833; 
 Sat, 14 Jan 2023 04:09:21 -0800 (PST)
Received: from smtpclient.apple (S01061cabc081bf83.cg.shawcable.net.
 [70.77.221.9]) by smtp.gmail.com with ESMTPSA id
 j14-20020a17090a318e00b00226d0165d97sm15434011pjb.22.2023.01.14.04.09.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 14 Jan 2023 04:09:21 -0800 (PST)
From: Andreas Dilger <adilger@dilger.ca>
Mime-Version: 1.0 (1.0)
Date: Sat, 14 Jan 2023 05:09:10 -0700
Message-Id: <393B8E4A-8C9A-4941-9AFF-FAC9C0D0B2DA@dilger.ca>
References: <f99e5221-4493-dba3-3e80-e85ada6b3545@oracle.com>
In-Reply-To: <f99e5221-4493-dba3-3e80-e85ada6b3545@oracle.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
X-Mailer: iPhone Mail (20B101)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Jan 13, 2023, at 08:15, Dave Kleikamp <dave.kleikamp@oracle.com>
    wrote: > > ﻿On 1/13/23 7:08AM, Harald Arnesen wrote: >> Christoph Hellwig
    [13/01/2023 06.42]: >>> Hi all, >>> >>> A while ago we'v [...] 
 
 Content analysis details:   (-0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.166.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.166.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pGfpk-0000ou-KW
Subject: Re: [Jfs-discussion] Should we orphan JFS?
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
Cc: Christoph Hellwig <hch@infradead.org>, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, Harald Arnesen <harald@skogtun.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gSmFuIDEzLCAyMDIzLCBhdCAwODoxNSwgRGF2ZSBLbGVpa2FtcCA8ZGF2ZS5rbGVpa2FtcEBv
cmFjbGUuY29tPiB3cm90ZToKPiAKPiDvu79PbiAxLzEzLzIzIDc6MDhBTSwgSGFyYWxkIEFybmVz
ZW4gd3JvdGU6Cj4+IENocmlzdG9waCBIZWxsd2lnIFsxMy8wMS8yMDIzIDA2LjQyXToKPj4+IEhp
IGFsbCwKPj4+IAo+Pj4gQSB3aGlsZSBhZ28gd2UndmUgZGVwcmVjYXRlZCByZWlzZXJmcyBhbmQg
c2NoZWR1bGVkIGl0IGZvciByZW1vdmFsLgo+Pj4gTG9va2luZyBpbnRvIHRoZSBoYWlyeSBtZXRh
cGFnZSBjb2RlIGluIEpGUyBJIHdvbmRlciBpZiB3ZSBzaG91bGQgZG8KPj4+IHRoZSBzYW1lLiAg
V2hpbGUgSkZTIGlzbid0IGFueXdoZXJlIGFzIGNvbXBsaWNhdGVkIGFzIHJlaXNlcmZzLCBpdCdz
Cj4+PiBhbHNvIHdheSBsZXNzIHVzZWQgYW5kIG5ldmVyIG1hZGUgaXQgdG8gYmUgdGhlIGRlZmF1
bHQgZmlsZSBzeXN0ZW0KPj4+IGluIGFueSBtYWpvciBkaXN0cmlidXRpb24uICBJdCdzIGFsc28g
bG9va2luZyBwcmV0dHkgaG9ycmlibGUgaW4KPj4+IHhmc3Rlc3RzLCBhbmQgd2l0aCBhbGwgdGhl
IG9uZ29pbmcgZm9saW8gd29yayBhbmQgaG9wZWZ1bCBldmVudHVhbAo+Pj4gcGhhc2VvdXQgb2Yg
YnVmZmVyIGhlYWQgYmFzZWQgSS9PIHBhdGggaXQncyBnb2luZyB0byBiZSBhIGJpdCBvZiBhIGRy
YWcuCj4+PiAoV2hpY2ggYWxzbyBjYW4gYmUgc2FpZCBmb3IgbWFueSBvdGhlciBmaWxlIHN5c3Rl
bSwgbW9zdCBvZiB0aGVtIGJlaW5nCj4+PiBhIGJpdCBzaW1wbGVyLCB0aG91Z2gpLgo+PiBUaGUg
Tm9yd2VnaWFuIElTUC9UViBwcm92aWRlciB1c2VkIHRvIGhhdmUgSVBUVi1ib3hlcyB3aGljaCBo
YWQgSkZTIG9uIHRoZSBoYXJkIGRpc2sgdGhhdCB3YXMgdXNlZCB0byByZWNvcmQgVFYgcHJvZ3Jh
bW1lcy4KPj4gSG93ZXZlciwgSSBkb24ndCB0aGluayB0aGVzZSBib3hlcyBhcmUgdXNlZCBhbnlt
b3JlLgo+IAo+IEkga25vdyBhdCBvbmUgdGltZSBpdCB3YXMgb25lIG9mIHRoZSByZWNvbW1lbmRl
ZCBmaWxlc3lzdGVtcyBmb3IgTXl0aFRWLiBJIGRvbid0IGtub3cgb2YgYW55IG90aGVyIG1ham9y
IHVzZXJzIG9mIEpGUy4gSSBkb24ndCBrbm93IGlmIHRoZXJlIGlzIGFueW9uZSBmYW1pbGlhciB3
aXRoIHRoZSBNeXRoVFYgY29tbXVuaXR5IHRoYXQgY291bGQgd2VpZ2ggaW4uCj4gCj4gT2J2aW91
c2x5LCBJIGhhdmVuJ3QgcHV0IG11Y2ggZWZmb3J0IGludG8gSkZTIGluIGEgbG9uZyB0aW1lIGFu
ZCBJIHdvdWxkIG5vdCBtaXNzIGl0IGlmIGl0IHdlcmUgdG8gYmUgcmVtb3ZlZC4KCkkndmUgdXNl
ZCBNeXRoVFYgZm9yIG1hbnkgeWVhcnMgYnV0IGhhdmVuJ3Qgc2VlbiBhbnkgcGFydGljdWxhciBy
ZWNvbW1lbmRhdGlvbnMgZm9yIEpGUyB0aGVyZS4gTWFpbmx5IGV4dDQgYW5kIFhGUyBhcmUgdGhl
IGNvbW1vbiBmaWxlc3lzdGVtcyB0byBmb2xsb3cgdGhlIG1haW4gZGlzdHJvcyAoVWJ1bnR1IGlu
IHBhcnRpY3VsYXIpLiAKCkNoZWVycywgQW5kcmVhcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
