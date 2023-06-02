Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CE17203A2
	for <lists+jfs-discussion@lfdr.de>; Fri,  2 Jun 2023 15:43:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q553l-0005ZG-DD;
	Fri, 02 Jun 2023 13:43:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jeffxu@chromium.org>) id 1q4xQA-00024k-9s
 for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jun 2023 05:33:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H3yguWcDHp3HLYdAxdeptyJ3CkNZ6M9GRuZ7B/u1X6w=; b=mfogC0GDrQ8QOUImTghYEgVeFp
 dJJmG1ZKMtiRZ4AcPFw+wwuUHHovsqGUqKfP+Ly+h/6Fa2jdOahIVt5zbQVY9+U1k1DrCEglSIT5i
 aY9OSIrEyjL1n4V+HC7DB1dUGQm4zcExM9nGrKcKfz7IQvXS+Geov3+xb4wTGA3TVI28=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H3yguWcDHp3HLYdAxdeptyJ3CkNZ6M9GRuZ7B/u1X6w=; b=QihWsVKrhJweGKAgx5fw7LyvSd
 NaTcyezbrRYYeY8e65X8gjd7xCspha12ZVX3V5n+s9mMIKpPQdFeELfjcnfxscXWd9ppNWj+g20Lb
 XBiMKWDd+3p+iv+c4bvvr6COnzneteq+lZ4bT8HJqNdIyr8unvMmLrEkaX0A4HKZ7z2c=;
Received: from mail-qt1-f169.google.com ([209.85.160.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4xQA-0007mk-FF for jfs-discussion@lists.sourceforge.net;
 Fri, 02 Jun 2023 05:33:55 +0000
Received: by mail-qt1-f169.google.com with SMTP id
 d75a77b69052e-3f8008cb772so15433561cf.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 01 Jun 2023 22:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1685684028; x=1688276028;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=H3yguWcDHp3HLYdAxdeptyJ3CkNZ6M9GRuZ7B/u1X6w=;
 b=A6Nek41SbYJrhWfaOLViKy7LijDcx5UORSU3njoxRBit/av9ciT72kXSL6NdLUNwvH
 RVnHvcvXU5jiw9hMphdGzPQoAjKE2RUe7/uGMgZK6ZFY9FCfNB+7QIuyQDgfpnygoH6q
 1k8Pl1G58D4g11pk474yw33wUfuPYcGmA6ZSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685684028; x=1688276028;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=H3yguWcDHp3HLYdAxdeptyJ3CkNZ6M9GRuZ7B/u1X6w=;
 b=L76UtP/JDbdcY+4QNK5AQ2GiMGMPPLvGineVv+XF5dCbl/3GgEQEi3AGwREj4/y+Z+
 6VzFP0YOJ4B3k5/SyKBhImapewJoIX2rcJGcyn6FYWE6JGoi/ZSFxF9nO8roKv6oWpRs
 VIKik5U68pdoU0Hkyiw3yc8zNW9SaOwWB/sWvvIJt4mXLi0ZwpvJcYsnjBi4YODHay92
 gRhILL3OU897POSvKdY1FYlHiwRSBt00ySHRCIMyGYAHV316rb7g8PESuef0KYFK/2uX
 ApjSXpTKLO7meZXtjWA7cBP8wzP1pc08AForixDKcHcKXn+8RtFvPlxsTjocSuTQT4vt
 JvEw==
X-Gm-Message-State: AC+VfDy0gnKgtH860n75LdwKiw4ZJujwAK/EiVYiP0rf1hdh0Ha/E+g5
 8qklYg+C06oaKbAAq/4BXyf9kMx5pdWNZab5/2lOCqFbUDbcmzvZ+ic=
X-Google-Smtp-Source: ACHHUZ4RBj8RdQRMXKt0yi/3THXJYYH7DAO+2dOrybJ3S9KNhKezTwszBYa3IWOpXD3BhZNx0LUIT9mNZtof0dGQq+s=
X-Received: by 2002:aca:1a06:0:b0:399:169:75d8 with SMTP id
 a6-20020aca1a06000000b00399016975d8mr1472040oia.35.1685683714512; Thu, 01 Jun
 2023 22:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230204183355.never.877-kees@kernel.org>
 <Y96/SUlPUl7xH1NO@gallifrey>
 <63e1486a.050a0220.7001.ca15@mx.google.com> <Y+FaEp2blurmgVlH@gallifrey>
 <202306010954.23972A710A@keescook>
In-Reply-To: <202306010954.23972A710A@keescook>
From: Jeff Xu <jeffxu@chromium.org>
Date: Thu, 1 Jun 2023 22:28:22 -0700
Message-ID: <CABi2SkUsirqw2AagHSRTSy-Re8V0rnUkYVgh1Ag2WcsqLZS54Q@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, Jun 1, 2023 at 9:55 AM Kees Cook <keescook@chromium.org>
    wrote: > > On Mon, Feb 06, 2023 at 07:50:42PM +0000, Dr. David Alan Gilbert
    wrote: > > * Kees Cook (keescook@chromium.org) wrote: > > [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.160.169 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.160.169 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q4xQA-0007mk-FF
X-Mailman-Approved-At: Fri, 02 Jun 2023 13:43:16 +0000
Subject: Re: [Jfs-discussion] [PATCH] jfs: Use unsigned variable for length
 calculations
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Dave Chinner <dchinner@redhat.com>, jfs-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCBKdW4gMSwgMjAyMyBhdCA5OjU14oCvQU0gS2VlcyBDb29rIDxrZWVzY29va0BjaHJv
bWl1bS5vcmc+IHdyb3RlOgo+Cj4gT24gTW9uLCBGZWIgMDYsIDIwMjMgYXQgMDc6NTA6NDJQTSAr
MDAwMCwgRHIuIERhdmlkIEFsYW4gR2lsYmVydCB3cm90ZToKPiA+ICogS2VlcyBDb29rIChrZWVz
Y29va0BjaHJvbWl1bS5vcmcpIHdyb3RlOgo+ID4gPiBPbiBTYXQsIEZlYiAwNCwgMjAyMyBhdCAw
ODoyNTo0NVBNICswMDAwLCBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0IHdyb3RlOgo+ID4gPiA+ICog
S2VlcyBDb29rIChrZWVzY29va0BjaHJvbWl1bS5vcmcpIHdyb3RlOgo+ID4gPiA+ID4gVG8gYXZv
aWQgY29uZnVzaW5nIHRoZSBjb21waWxlciBhYm91dCBwb3NzaWJsZSBuZWdhdGl2ZSBzaXplcywg
c3dpdGNoCj4gPiA+ID4gPiAic3NpemUiIHdoaWNoIGNhbiBuZXZlciBiZSBuZWdhdGl2ZSBmcm9t
IGludCB0byB1MzIuICBTZWVuIHdpdGggR0NDIDEzOgo+ID4gPiA+ID4KPiA+ID4gPiA+IC4uL2Zz
L2pmcy9uYW1laS5jOiBJbiBmdW5jdGlvbiAnamZzX3N5bWxpbmsnOiAuLi9pbmNsdWRlL2xpbnV4
L2ZvcnRpZnktc3RyaW5nLmg6NTc6MzM6IHdhcm5pbmc6ICdfX2J1aWx0aW5fbWVtY3B5JyBwb2lu
dGVyIG92ZXJmbG93IGJldHdlZW4gb2Zmc2V0IDAgYW5kIHNpemUgWy0yMTQ3NDgzNjQ4LCAtMV0K
PiA+ID4gPiA+IFstV2FycmF5LWJvdW5kcz1dCj4gPiA+ID4gPiAgICA1NyB8ICNkZWZpbmUgX191
bmRlcmx5aW5nX21lbWNweSAgICAgX19idWlsdGluX21lbWNweQo+ID4gPiA+ID4gICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiA+ID4gPiA+IC4uLgo+ID4gPiA+ID4g
Li4vZnMvamZzL25hbWVpLmM6OTUwOjE3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ21l
bWNweScKPiA+ID4gPiA+ICAgOTUwIHwgICAgICAgICAgICAgICAgIG1lbWNweShpcC0+aV9saW5r
LCBuYW1lLCBzc2l6ZSk7Cj4gPiA+ID4gPiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn4K
PiA+ID4gPiA+Cj4gPiA+ID4gPiBDYzogRGF2ZSBLbGVpa2FtcCA8c2hhZ2d5QGtlcm5lbC5vcmc+
Cj4gPiA+ID4gPiBDYzogQ2hyaXN0aWFuIEJyYXVuZXIgPGJyYXVuZXJAa2VybmVsLm9yZz4KPiA+
ID4gPiA+IENjOiBEYXZlIENoaW5uZXIgPGRjaGlubmVyQHJlZGhhdC5jb20+Cj4gPiA+ID4gPiBD
YzogamZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cj4gPiA+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KPiA+ID4gPiA+IC0tLQo+
ID4gPiA+ID4gIGZzL2pmcy9uYW1laS5jIHwgNiArKystLS0KPiA+ID4gPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ID4gPiA+ID4KPiA+ID4gPiA+
IGRpZmYgLS1naXQgYS9mcy9qZnMvbmFtZWkuYyBiL2ZzL2pmcy9uYW1laS5jCj4gPiA+ID4gPiBp
bmRleCBiMjlkNjhiNWVlYzUuLjQ5NGI5ZjQwNDNjZiAxMDA2NDQKPiA+ID4gPiA+IC0tLSBhL2Zz
L2pmcy9uYW1laS5jCj4gPiA+ID4gPiArKysgYi9mcy9qZnMvbmFtZWkuYwo+ID4gPiA+ID4gQEAg
LTg3Niw3ICs4NzYsNyBAQCBzdGF0aWMgaW50IGpmc19zeW1saW5rKHN0cnVjdCBtbnRfaWRtYXAg
KmlkbWFwLCBzdHJ1Y3QgaW5vZGUgKmRpcCwKPiA+ID4gPiA+ICAgICAgICAgdGlkX3QgdGlkOwo+
ID4gPiA+ID4gICAgICAgICBpbm9fdCBpbm8gPSAwOwo+ID4gPiA+ID4gICAgICAgICBzdHJ1Y3Qg
Y29tcG9uZW50X25hbWUgZG5hbWU7Cj4gPiA+ID4gPiAtICAgICAgIGludCBzc2l6ZTsgICAgICAg
ICAgICAgIC8qIHNvdXJjZSBwYXRobmFtZSBzaXplICovCj4gPiA+ID4gPiArICAgICAgIHUzMiBz
c2l6ZTsgICAgICAgICAgICAgIC8qIHNvdXJjZSBwYXRobmFtZSBzaXplICovCj4gPiA+ID4KPiA+
ID4gPiBIYWQgeW91IGNvbnNpZGVyZWQgdXNpbmcgc2l6ZV90IC0gdGhpcyBpcyBzZXQgZnJvbSBh
IHN0cmxlbiBhbmQgdXNlZCBieSBhIG1lbWNweQo+ID4gPiA+IHRoYXQgYm90aCB0YWxrIHNpemVf
dC4KPiA+ID4KPiA+ID4gSSBjb25zaWRlcmVkIHRoYXQsIGJ1dCBJJ3ZlIGhhZCBvdGhlciBtYWlu
dGFpbmVycyB1cHNldCBhYm91dCBkb3VibGluZwo+ID4gPiB0aGUgdmFyaWFibGUgc2l6ZS4KPiA+
Cj4gPiBJIGJldCBhdCBsZWFzdCBvbiBzb21lIHBsYXRmb3JtcyBpdCdzIGNoZWFwZXIgYXMgdGhl
IDY0IGJpdC4KPiA+Cj4gPiA+IEkgb3B0ZWQgdG8ga2VlcCB0aGUgdmFyaWFibGUgMzItYml0IGhl
cmUsIHNvIHRoZQo+ID4gPiBtYWNoaW5lIGNvZGUgd291bGQgb25seSBjaGFuZ2UgdG8gbG9zZSBz
aWduZWQtbmVzcy4KPiA+Cj4gPiBGYWlyIGVub3VnaC4KPgo+IFRocmVhZCBwaW5nLiBDYW4gc29t
ZW9uZSBwaWNrIHRoaXMgdXAgKG9yIEFjayBpdCBmb3IgbXkgdHJlZSksIHBsZWFzZT8KPgpBY2tl
ZC1ieTogSmVmZiBYdSA8amVmZnh1QGNocm9taXVtLm9yZz4KCkluIGNhc2UgeW91IGFzayBzb21l
b25lIHRvIGxvb2sgYXQgY29kZSwgd2hpY2ggSSBkaWQuCkJlc3QKLUplZmYKCgo+IFRoYW5rcyEK
Pgo+IC1LZWVzCj4KPiAtLQo+IEtlZXMgQ29vawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlz
Y3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
