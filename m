Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC50975D5DE
	for <lists+jfs-discussion@lfdr.de>; Fri, 21 Jul 2023 22:41:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qMwvx-00030y-Kk;
	Fri, 21 Jul 2023 20:41:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hackerzheng666@gmail.com>) id 1qMlIW-00039i-Sr
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 08:15:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pd2HhKZxSyoZydvli66d5N9UqG8GWNvUPymvOuFu+BY=; b=dFhzzsWnA7yM8lfpUkzEZJ5WZL
 BbMhbMCKlwL4MKJG5CY3JsFjGUXCKqXuQ8L4T7a4xxbUrM8bQDfiv245VsXjV34IQKWZei/HV4q98
 cQkl2fPL8RBlW7I5zDR28jIkUnWsCjOfQK5+MuxT9HTeLR7Pxm3+CA1RXltC1Y6UfWuQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pd2HhKZxSyoZydvli66d5N9UqG8GWNvUPymvOuFu+BY=; b=J2IIRywyxn1TX4o0qsnpqMdTpG
 ryAMZgAWMq8EbWgLGUu/BNfbl8x6WD6Xlln0okmvgwbSrzdVgalsSRupyyVPXpzk2Utznqnlp7XsF
 lXR144euMa2FD/DcO7iMs3LA+lpsfATt0rFMdCswLr8Iv65nzxWETwZNk8kPk0NcGCrI=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qMlIW-00Ewgx-A6 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 08:15:36 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 98e67ed59e1d1-26304be177fso900735a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 21 Jul 2023 01:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1689927331; x=1690532131;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=pd2HhKZxSyoZydvli66d5N9UqG8GWNvUPymvOuFu+BY=;
 b=WrqNWxA6ozYcj57TebNYbv3CyPO4HiaeGg8dhFmCNz2fu3TAP3T7amvGX2pGp3cOZk
 0mv7FhbktJWEcOEpBX8bx85ELIypT5ZslXmYriWWqWV/DK3thkXFHcupNZL7CCnEtGh2
 0b5BrMeVMnT8MhHGYtLLTW2LyuvDpptlTQ6hOCRJYaiH7MbaOt0wu3Ty8M5gT+4BxJ15
 OmysFFZhihSq/aQQVdCiBHAa0gWsvdQetNvzA+1eekZ8tJsU7kKoj6Fu2OJXFnTtY6s+
 E8pkbfOrvGplHvCVGaQe4RVURpfq9qeyCDvpQgQIMtAFE2vIDspDQ3j2B8ydhek++41s
 3/Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689927331; x=1690532131;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pd2HhKZxSyoZydvli66d5N9UqG8GWNvUPymvOuFu+BY=;
 b=FYo5cik72BjhJTi7LtyEezOxIwGXVaP4tpJjMaz7O73j79PP8PofmWvpjLNZ54dC5l
 LYuGsSi6vY+mR0dkcie9tsAkolhtbgUgM3ZS3KW/MiKvasWqgvQ2E8qNc8AwjpeAFJHV
 aygVGTzQPOWYVfWt5aXiHBxxA2abrL1zeuaiGzwpeDpGzP42ZI5rWdSFoBxIcTLbYX2A
 vD8OpCTFz1EiLR5Jb62szSk4l8r14RTiJSw7XRuOhG8sOjt9zUs3Bcp6XAvIIqSEQ9SZ
 jckycp3BQzJcAGLxdR6CHiPlOR6QwUHrXJsipmya14683FrNmSH1Vm2JILei1BSF8tNk
 moaQ==
X-Gm-Message-State: ABy/qLYLsnn5R774Q1XPQ+b2hRjqwr7jrxJRdseE+wzU2VBBqunnkBqQ
 7wWG+B/QIYNEFwA1wKFdlAceF0FYA0oqQeB5U4BQlQJbU8uD66LR7hI=
X-Google-Smtp-Source: APBJJlG1rDRObtkpxXKFgC+LcsERPI9sM+v6zog7x9RE1PuPwGG6oQ1tTBurwjrnhgRoza+RywP8Zc9+I4RW4uZoTb8=
X-Received: by 2002:a17:90a:d711:b0:263:5c78:4b63 with SMTP id
 y17-20020a17090ad71100b002635c784b63mr779192pju.45.1689927330568; Fri, 21 Jul
 2023 01:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230515095956.17898-1-zyytlz.wz@163.com>
 <kyzmstq5dodvgpmd7rge3gtdikbbpauw6fide7vccgii4xtb6n@bwrwjsx4ylmx>
In-Reply-To: <kyzmstq5dodvgpmd7rge3gtdikbbpauw6fide7vccgii4xtb6n@bwrwjsx4ylmx>
Date: Fri, 21 Jul 2023 16:15:19 +0800
Message-ID: <CAJedcCzmx02bfa22QezE8mu-iDsSdSy_oApT2ozCWO8O-8MJEQ@mail.gmail.com>
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Michal, Michal Koutný 于2023年7月20日周四 17:56写道：
    > > Hello Zheng. > > On Mon, May 15, 2023 at 05:59:56PM +0800, Zheng Wang
    wrote: > > ======================================================= [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [hackerzheng666[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [hackerzheng666[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.49 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.49 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qMlIW-00Ewgx-A6
X-Mailman-Approved-At: Fri, 21 Jul 2023 20:41:02 +0000
Subject: Re: [Jfs-discussion] [PATCH] fs/jfs: Add a mutex named
 txEnd_lmLogClose_mutex to prevent a race condition between txEnd and
 lmLogClose functions
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
From: Zheng Hacker via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Zheng Hacker <hackerzheng666@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 alex000young@gmail.com, security@kernel.org, linux-kernel@vger.kernel.org,
 1395428693sheep@gmail.com, Zheng Wang <zyytlz.wz@163.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGVsbG8gTWljaGFsLAoKCk1pY2hhbCBLb3V0bsO9IDxta291dG55QHN1c2UuY29tPiDkuo4yMDIz
5bm0N+aciDIw5pel5ZGo5ZubIDE3OjU25YaZ6YGT77yaCj4KPiBIZWxsbyBaaGVuZy4KPgo+IE9u
IE1vbiwgTWF5IDE1LCAyMDIzIGF0IDA1OjU5OjU2UE0gKzA4MDAsIFpoZW5nIFdhbmcgPHp5eXRs
ei53ekAxNjMuY29tPiB3cm90ZToKPiA+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQo+ID4gQlVHOiBLQVNBTjogc2xhYi11
c2UtYWZ0ZXItZnJlZSBpbiBpbnN0cnVtZW50X2F0b21pY193cml0ZSBpbmNsdWRlL2xpbnV4L2lu
c3RydW1lbnRlZC5oOjg3IFtpbmxpbmVdCj4gPiBCVUc6IEtBU0FOOiBzbGFiLXVzZS1hZnRlci1m
cmVlIGluIGNsZWFyX2JpdCBpbmNsdWRlL2FzbS1nZW5lcmljL2JpdG9wcy9pbnN0cnVtZW50ZWQt
YXRvbWljLmg6NDEgW2lubGluZV0KPiA+IEJVRzogS0FTQU46IHNsYWItdXNlLWFmdGVyLWZyZWUg
aW4gdHhFbmQrMHgyYTMvMHg1YTAgZnMvamZzL2pmc190eG5tZ3IuYzo1MzUKPiA+IFdyaXRlIG9m
IHNpemUgOCBhdCBhZGRyIGZmZmY4ODgwMjFiZWU4NDAgYnkgdGFzayBqZnNDb21taXQvMTMwCj4g
Pgo+ID4gQ1BVOiAzIFBJRDogMTMwIENvbW06IGpmc0NvbW1pdCBOb3QgdGFpbnRlZCA2LjMuMC1y
YzctcGFzdGEgIzEKPgo+IElzIHRoaXMgc3RpbGwgcGVydGluZW50IHdpdGggdGhlIGN1cnJlbnQg
bWFpbmxpbmU/IChUaGVyZSB3ZXJlIHNvbWUKPiBjaGFuZ2VzIHRvIGpmcy4pCgpUaGFuayB5b3Ug
dmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5IGFuZCBzdWdnZXN0aW9uLiBJIHRob3VnaHQgdGhhdCB0
aGlzCkJVRyBzdGlsbCBleGlzdHMgaW4gdGhlIGN1cnJlbnQgbWFpbmxpbmUga2VybmVsIHZlcnNp
b24uIFNpbmNlIEkgYW0Kbm90IHZlcnkgZmFtaWxpYXIgd2l0aCB0aGlzIHBhcnQgb2YgdGhlIGNv
ZGUsIEkgYW0gbm90IHN1cmUgaWYgdGhlCnByb3Bvc2VkIGZpeCBpcyBjb3JyZWN0LgoKPgo+ID4g
VGhyb3VnaCBhbmFseXNpcywgaXQgd2FzIGZvdW5kIHRoYXQgYSByYWNlIGNvbmRpdGlvbiBvY2N1
cnJlZCBiZXR3ZWVuIHR3bwo+ID4gZnVuY3Rpb25zIGxtTG9nQ2xvc2UgYW5kIHR4RW5kLCB3aGlj
aCB3ZXJlIGV4ZWN1dGVkIGluIGRpZmZlcmVudCB0aHJlYWRzLgo+ID4gVGhlIHBvc3NpYmxlIHNl
cXVlbmNlIGlzIGFzIGZvbGxvd3M6Cj4gPgo+ID4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4gY3B1MShm
cmVlIHRocmVhZCkgICAgICAgIHwgICAgICAgIGNwdTIodXNlIHRocmVhZCkKPiA+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0KPiA+IGxtTG9nQ2xvc2UgICAgICAgICAgICAgICB8ICAgICAgICB0eEVuZAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgIGxvZyA9IEpGU19TQkkodGJsay0+c2Ip
LT5sb2c7Cj4gPiBzYmktPmxvZyA9IE5VTEw7ICAgICAgICAgfAo+ID4ga2ZyZWUobG9nKTsgWzFd
IGZyZWUgbG9nIHwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICBjbGVhcl9i
aXQobG9nX0ZMVVNILCAmbG9nLT5mbGFnKTsgWzJdIFVBRgo+Cj4gVGhhdCBsb29rcyBzYW5lIHRv
IGEgYnktcGFzc2VyLgo+Cj4gPiBGaXggaXQgYnkgYWRkIGEgbXV0ZXggbG9jayBiZXR3ZWVuIGxt
TG9nQ2xvc2UgYW5kIHR4RW5kOgo+Cj4gSXQgZG9lc24ndCBmZWVsIHJpZ2h0IHdydCAibG9jayBk
YXRhLCBub3QgY29kZSIgaGV1cmlzdGljcy4KPiBBbmQgd2hlbiBJIGFwcGx5IHRoYXQsIGl0IHR1
cm5zIG91dCB0aGVyZSdzIGFscmVhZHkgamZzX2xvZ19tdXRleC4KPiBJJ2Qgc3VnZ2VzdCB5b3Ug
ZXhwbGFpbiBtb3JlIHdoeSBhIG5ldyBsb2NrIGlzIG5lZWRlZCAoaWYgdGhhdCdzIHRoZQo+IHBy
ZWZlcnJlZCBzb2x1dGlubykuCgpZb3UncmUgcmlnaHQsIEkgdGhpbmsgbXkgZml4IG1ldGhvZCBp
cyBub3QgYSBnb29kIHNvbHV0aW9uLiBIb3BpbmcgeW91CmFuZCBvdGhlciBkZXZlbG9wZXJzIGNh
biBoZWxwIGZpeCBpdC4KCj4KPiBUaGFua3MsCj4gTWljaGFsCgpPbmNlIGFnYWluLCBJIGFwcHJl
Y2lhdGUgeW91ciBoZWxwIGFuZCB3aWxsIHRha2UgeW91ciBmZWVkYmFjayBpbnRvCmNvbnNpZGVy
YXRpb24gd2hlbiB3b3JraW5nIG9uIGEgc29sdXRpb24uCgpCZXN0IHJlZ2FyZHMsClpoZW5nCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1
c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApo
dHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lv
bgo=
