Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F26E7414AB
	for <lists+jfs-discussion@lfdr.de>; Wed, 28 Jun 2023 17:14:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qEWre-0004D2-32;
	Wed, 28 Jun 2023 15:13:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1qEWrU-0004Cu-JS
 for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:13:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DBTIfrxMdKKM9sBHIVJZO9vzHO75jz/0ZU+aMpxxKZE=; b=TkayLBwP1K10C0fhozkTg9tVxK
 Pv4DK6pZDqSvP28yV2iF3UJ+TgzyH+nyYxjCb6AiKpQ95Io/IrjTzwxwmzMIBLamajaobzYjDbUYU
 0chsftNvtcErtEU0fqXUC4avPiqerb8HKfzQp5KpZEeYxOBmQT2Xi+5fhVuuuy2MkSiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DBTIfrxMdKKM9sBHIVJZO9vzHO75jz/0ZU+aMpxxKZE=; b=PmSGZL+mf7/Oz4v73PcaEU8RXn
 XjudVKd+uWpeNqNEjDCZBXSb9BCqRbhoXJbfZpAJnVsnHEvoNlD4deSIkJKLDsp+hFuyzhIxT21vk
 xSRepazG+ZTd6NM+vlvleTc2ODiKY9ic/j4HXyruYuWeoXcBjqTl7Z8a3H6H95QRHG6U=;
Received: from mx.treblig.org ([46.235.229.95])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qEWrN-0007hT-Ui for jfs-discussion@lists.sourceforge.net;
 Wed, 28 Jun 2023 15:13:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DBTIfrxMdKKM9sBHIVJZO9vzHO75jz/0ZU+aMpxxKZE=; b=momUJtebq9yrc3OXvovd16djTJ
 C2HZNqgjC41tWcLJkC0tbgDnDWHGEw49Oh4Z31tXD0nUhJpCz8kAg9dEcnanu0mDSfUq4o9gVap5F
 VV+KfCoRy7wgdrot4IZ8s5qCAXFDc6d0IUqKAf9zaEKhv/lq3ef7LwcSblm7C8nw2mL2Oj7rwPUkX
 dM65UjPbEl+047Kv+AKU7ZFlitQ06kT8qepIxE88HYf7PQueJZphHs4z5ovkW8EvzNZ45OnsPzViK
 /7sf0rAiDmoRmcXMkyesoJcXXVY1X2QHwa0v97dNpB3Gp1FfxmZdYSPxjUxCCDELjCqaNVCUckCGK
 SdWmijyg==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1qEWr9-00GTya-Gw; Wed, 28 Jun 2023 15:13:19 +0000
Date: Wed, 28 Jun 2023 15:13:19 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <ZJxOD+OZzq3FR1dH@gallifrey>
References: <20230628011439.159678-1-linux@treblig.org>
 <9343462e-6a4a-ca7b-03b8-4855e5a33b72@talpey.com>
 <ZJw4iLlFWRMq6a3S@gallifrey> <ZJw50e0pvn/IN5Gj@gallifrey>
 <90f35697-5941-d42d-b600-245454cbd040@oracle.com>
 <ZJxGFBzuhU8t5rcx@gallifrey>
 <CAH2r5ms1UE4vAuakBLuayv1CXw3sC_OcuhtCrz5mV_ftR+=rjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5ms1UE4vAuakBLuayv1CXw3sC_OcuhtCrz5mV_ftR+=rjg@mail.gmail.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-21-amd64 (x86_64)
X-Uptime: 15:12:06 up 101 days,  1:46,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  * Steve French (smfrench@gmail.com) wrote: > On Wed, Jun 28,
    2023 at 9:40 AM Dr. David Alan Gilbert > <linux@treblig.org> wrote: > >
    > > Actually, would you be ok with smb_unicode_common ? The reaso [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qEWrN-0007hT-Ui
Subject: Re: [Jfs-discussion] [PATCH 0/3] dedupe smb unicode files
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
Cc: sfrench@samba.org, jfs-discussion@lists.sourceforge.net,
 linux-cifs@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tom Talpey <tom@talpey.com>, krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

KiBTdGV2ZSBGcmVuY2ggKHNtZnJlbmNoQGdtYWlsLmNvbSkgd3JvdGU6Cj4gT24gV2VkLCBKdW4g
MjgsIDIwMjMgYXQgOTo0MOKAr0FNIERyLiBEYXZpZCBBbGFuIEdpbGJlcnQKPiA8bGludXhAdHJl
YmxpZy5vcmc+IHdyb3RlOgo+ID4gPiA+IEFjdHVhbGx5LCB3b3VsZCB5b3UgYmUgb2sgd2l0aCBz
bWJfdW5pY29kZV9jb21tb24gPyAgVGhlIHJlYXNvbiBpcyB0aGF0Cj4gPiA+ID4geW91IGVuZCB1
cCB3aXRoIGEgbW9kdWxlIG5hbWVkIHVuaWNvZGVfY29tbW9uICB0aGF0IHNvdW5kcyB0b28gZ2Vu
ZXJpYy4KPiA+ID4KPiA+ID4gSSdkIHN1Z2dlc3QgbWFrZSBpdCBnZW5lcmljIGFuZCBtb3ZlIGl0
IHRvIGZzL25scy8uIEknZCBydW4gaXQgYnkgdGhlIG5scwo+ID4gPiBtYWludGFpbmVycywgYnV0
IEkgZG9uJ3QgdGhpbmsgdGhlcmUgYXJlIGFueS4KPiA+Cj4gPiBTdGV2ZSAmIFRvbSAtIHdvdWxk
IHlvdSBiZSBPSyB3aXRoIHRoYXQ/Cj4gCj4gWWVzIC0gYWJzb2x1dGVseQoKT0suCgo+ID4gKENv
cHlpbmcgaW4gR2FicmllbCBCZXJ0YXppLCBvd25lciBvZiBmcy91bmljb2RlOyBhbHRob3VnaCB0
aGlzIGlzbid0Cj4gPiB1dGYtOCkKPiAKPiBVbmljb2RlIFVDUy0yCgooSSdtIGdvaW5nIHRvIHJl
Z3JldCB0aGUgbmV4dCBxdWVzdGlvbi4uLikKU28gaG93IGRvZXMgdGhpcyBjb21wYXJlIHRvIHRo
ZSBzdHVmZiBpbiBpbmNsdWRlL2xpbnV4L3VjczJfc3RyaW5nLmgKYW5kIGxpYi91Y3MyX3N0cmlu
Zy5jID8KCkRhdmUKCj4gCj4gLS0gCj4gVGhhbmtzLAo+IAo+IFN0ZXZlCi0tIAogLS0tLS1PcGVu
IHVwIHlvdXIgZXllcywgb3BlbiB1cCB5b3VyIG1pbmQsIG9wZW4gdXAgeW91ciBjb2RlIC0tLS0t
LS0gICAKLyBEci4gRGF2aWQgQWxhbiBHaWxiZXJ0ICAgIHwgICAgICAgUnVubmluZyBHTlUvTGlu
dXggICAgICAgfCBIYXBweSAgXCAKXCAgICAgICAgZGF2ZSBAIHRyZWJsaWcub3JnIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCBJbiBIZXggLwogXCBfX19fX19fX19fX19fX19fX19f
X19fX19ffF9fX19fIGh0dHA6Ly93d3cudHJlYmxpZy5vcmcgICB8X19fX19fXy8KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBt
YWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
