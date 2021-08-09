Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEC83E4C93
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Aug 2021 21:02:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mDAXa-0004R5-Cs; Mon, 09 Aug 2021 19:02:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <slava@dubeyko.com>) id 1mDAXY-0004Qp-Ng
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 19:02:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=; b=LBMq9qUA5kBuChVtSlSMxYySBh
 Q2fEQ1Iuqip71yqYyrnyhwN/dQpVCVzhMYbve/nb/SG+DDsdT9+EtKiQSCanEdtaIEI1Twc6LaMzn
 5flT6gOn8n/lePUUd7ZK1ZA01cKce//JofnlS7ofpHPqRETKn9codWLy9t3s1ChDM41c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=; b=e5dL76muE2By4Twm8CnuvQZAhr
 8Nh6RnXd+ags6KOQWdLFE2RqV8JcnZvNMU5fIQF8qWX/9R8AhkKh7GpCM9n0jxxW54P5dmuMRnT6A
 FZ0zJSrw7A2lJ89T2Ra8fUvtvJHuh7nyqE7ORqQxgsO648J2OZUnROgRycRtUxqVEydw=;
Received: from mail-vk1-f181.google.com ([209.85.221.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mDAXR-0005fP-Uu
 for jfs-discussion@lists.sourceforge.net; Mon, 09 Aug 2021 19:02:24 +0000
Received: by mail-vk1-f181.google.com with SMTP id g16so4166078vkk.12
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Aug 2021 12:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=;
 b=k7xueK+4mzlwQUXdMpnpVWcp6qTmXBLHD5nXWjbJU/SR8aiAO7DEpGfbhjy+eH4Ptp
 WiCxbmhhS5Is71rOqmUmFzG/a4XoPsYskvlWEbqBBUAnrQSi8bVfZGtNCqHAEJn86L5s
 oHc83AkppqSnusxvPCkGq8eHlZA9QaCChWzFUh1s3dTWITsMWM1NrF9n8En51n0mdIJX
 U/oWCzdQnwSpHjb/G5iTbAhtUIzFy0nwxPuDH0v8Kbxq5XJQaCp5NKMDJ6WcI/qlixSO
 +e5VTir7JDVGm7xN8H///ivAJvQOLY5HXnctPnchpN+NiCnxnKF1GBS9YLFnyJnGyWAb
 e8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+jgm8f6qLwVRwqw+onxb7pUQp2OzWLj5MWSH/TZR1lg=;
 b=TE/i5Q9BcX3bPky9BuhRw2vXpX1YdN445KAMnWgkdfO0FgvhAiCYO0TakoqWRyGIUM
 poxeqnDCO0yvxp7y5D9xfBW9pXvnUEbaa2LfsbPuKBock949GEYHhjeIFig56JPiuXwM
 37pNlQv5upXy7gxa2VrJvu3H2uWzvpneUMSfwwZR5d79Vv1imnJP9CeWz90P7R5b66e8
 avJVhnrS2RaOM6834prixLhrWs8b1d9kdLG9dHFr7EDXaGNzgA/n/3jFkzYq4fdVzLpk
 XlfhRjrH73AklUVQZm6dlzmtS4fJGVp5INMe95ePDJ9ttEiFeEyGk19Iw63k09ruc8kv
 VeYQ==
X-Gm-Message-State: AOAM533ujGhV/83o51kjHXwhiEMF+JzEZTMbKSNuv3ZrG17SYCwWsoFY
 er49sKCBTSc4Iip71rSUebM5L4dAU7I26MlINHs=
X-Google-Smtp-Source: ABdhPJwBTUiS+76CDkMxJrLBv/Y+VhQj6kwC4MHhZsyJSCETZaOiVdDvWRCCGaqaWO6lSrHh5M+P0w==
X-Received: by 2002:a05:6214:18c7:: with SMTP id
 cy7mr24583469qvb.59.1628531509748; 
 Mon, 09 Aug 2021 10:51:49 -0700 (PDT)
Received: from smtpclient.apple ([2600:1700:42f0:6600:615b:6e84:29a:3bc6])
 by smtp.gmail.com with ESMTPSA id c27sm8499011qkp.5.2021.08.09.10.51.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Aug 2021 10:51:49 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Viacheslav Dubeyko <slava@dubeyko.com>
In-Reply-To: <20210808162453.1653-3-pali@kernel.org>
Date: Mon, 9 Aug 2021 10:51:44 -0700
Message-Id: <DA573A41-865C-4171-8837-FD5A2C33F42B@dubeyko.com>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-3-pali@kernel.org>
To: =?utf-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.181 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mDAXR-0005fP-Uu
Subject: Re: [Jfs-discussion] [RFC PATCH 02/20] hfsplus: Add iocharset=
 mount option as alias for nls=
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
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Andrew Morton <akpm@linux-foundation.org>,
 =?utf-8?Q?Marek_Beh=C3=BAn?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Cgo+IE9uIEF1ZyA4LCAyMDIxLCBhdCA5OjI0IEFNLCBQYWxpIFJvaMOhciA8cGFsaUBrZXJuZWwu
b3JnPiB3cm90ZToKPiAKPiBPdGhlciBmcyBkcml2ZXJzIGFyZSB1c2luZyBpb2NoYXJzZXQ9IG1v
dW50IG9wdGlvbiBmb3Igc3BlY2lmeWluZyBjaGFyc2V0Lgo+IFNvIGFkZCBpdCBhbHNvIGZvciBo
ZnNwbHVzIGFuZCBtYXJrIG9sZCBubHM9IG1vdW50IG9wdGlvbiBhcyBkZXByZWNhdGVkLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+Cj4gLS0tCj4gZnMv
aGZzcGx1cy9vcHRpb25zLmMgfCA3ICsrKysrKy0KPiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2ZzL2hmc3BsdXMvb3B0aW9u
cy5jIGIvZnMvaGZzcGx1cy9vcHRpb25zLmMKPiBpbmRleCAwNDdlMDVjNTc1NjAuLmE5NzU1NDhm
NmI5MSAxMDA2NDQKPiAtLS0gYS9mcy9oZnNwbHVzL29wdGlvbnMuYwo+ICsrKyBiL2ZzL2hmc3Bs
dXMvb3B0aW9ucy5jCj4gQEAgLTIzLDYgKzIzLDcgQEAgZW51bSB7Cj4gCW9wdF9jcmVhdG9yLCBv
cHRfdHlwZSwKPiAJb3B0X3VtYXNrLCBvcHRfdWlkLCBvcHRfZ2lkLAo+IAlvcHRfcGFydCwgb3B0
X3Nlc3Npb24sIG9wdF9ubHMsCj4gKwlvcHRfaW9jaGFyc2V0LAo+IAlvcHRfbm9kZWNvbXBvc2Us
IG9wdF9kZWNvbXBvc2UsCj4gCW9wdF9iYXJyaWVyLCBvcHRfbm9iYXJyaWVyLAo+IAlvcHRfZm9y
Y2UsIG9wdF9lcnIKPiBAQCAtMzcsNiArMzgsNyBAQCBzdGF0aWMgY29uc3QgbWF0Y2hfdGFibGVf
dCB0b2tlbnMgPSB7Cj4gCXsgb3B0X3BhcnQsICJwYXJ0PSV1IiB9LAo+IAl7IG9wdF9zZXNzaW9u
LCAic2Vzc2lvbj0ldSIgfSwKPiAJeyBvcHRfbmxzLCAibmxzPSVzIiB9LAo+ICsJeyBvcHRfaW9j
aGFyc2V0LCAiaW9jaGFyc2V0PSVzIiB9LAo+IAl7IG9wdF9kZWNvbXBvc2UsICJkZWNvbXBvc2Ui
IH0sCj4gCXsgb3B0X25vZGVjb21wb3NlLCAibm9kZWNvbXBvc2UiIH0sCj4gCXsgb3B0X2JhcnJp
ZXIsICJiYXJyaWVyIiB9LAo+IEBAIC0xNjYsNiArMTY4LDkgQEAgaW50IGhmc3BsdXNfcGFyc2Vf
b3B0aW9ucyhjaGFyICppbnB1dCwgc3RydWN0IGhmc3BsdXNfc2JfaW5mbyAqc2JpKQo+IAkJCX0K
PiAJCQlicmVhazsKPiAJCWNhc2Ugb3B0X25sczoKPiArCQkJcHJfd2Fybigib3B0aW9uIG5scz0g
aXMgZGVwcmVjYXRlZCwgdXNlIGlvY2hhcnNldD1cbiIpOwo+ICsJCQkvKiBmYWxsdGhyb3VnaCAq
Lwo+ICsJCWNhc2Ugb3B0X2lvY2hhcnNldDoKPiAJCQlpZiAoc2JpLT5ubHMpIHsKPiAJCQkJcHJf
ZXJyKCJ1bmFibGUgdG8gY2hhbmdlIG5scyBtYXBwaW5nXG4iKTsKPiAJCQkJcmV0dXJuIDA7Cj4g
QEAgLTIzMCw3ICsyMzUsNyBAQCBpbnQgaGZzcGx1c19zaG93X29wdGlvbnMoc3RydWN0IHNlcV9m
aWxlICpzZXEsIHN0cnVjdCBkZW50cnkgKnJvb3QpCj4gCWlmIChzYmktPnNlc3Npb24gPj0gMCkK
PiAJCXNlcV9wcmludGYoc2VxLCAiLHNlc3Npb249JXUiLCBzYmktPnNlc3Npb24pOwo+IAlpZiAo
c2JpLT5ubHMpCj4gLQkJc2VxX3ByaW50ZihzZXEsICIsbmxzPSVzIiwgc2JpLT5ubHMtPmNoYXJz
ZXQpOwo+ICsJCXNlcV9wcmludGYoc2VxLCAiLGlvY2hhcnNldD0lcyIsIHNiaS0+bmxzLT5jaGFy
c2V0KTsKPiAJaWYgKHRlc3RfYml0KEhGU1BMVVNfU0JfTk9ERUNPTVBPU0UsICZzYmktPmZsYWdz
KSkKPiAJCXNlcV9wdXRzKHNlcSwgIixub2RlY29tcG9zZSIpOwo+IAlpZiAodGVzdF9iaXQoSEZT
UExVU19TQl9OT0JBUlJJRVIsICZzYmktPmZsYWdzKSkKPiAtLSAKPiAyLjIwLjEKPiAKCkxvb2tz
IHJlYXNvbmFibGUuIEJ1dCBJIHdvdWxkIGxpa2UgdG8gYmUgc3VyZSB0aGF0IHRoZSBjb2RlIGhh
cyBiZWVuIHJlYXNvbmFibHkgdGVzdGVkLgoKVGhhbmtzLApTbGF2YS4KCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
