Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DA6781758
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Aug 2023 06:36:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qXDgu-0001ma-TQ;
	Sat, 19 Aug 2023 04:36:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <smfrench@gmail.com>) id 1qXDgt-0001mT-8x
 for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Aug 2023 04:35:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E9RDO+mu4zOwSEJ716yo61Qz/xnDxFXm4Etyq0Z0RWE=; b=KGib9eMh4DsCyXK3dklA6u2Rmk
 KTeuDW7bf+yrBy86rjzq7+9030JAchH8yCHYDqnd7pttJrf5aeb7OiutUERVsasRKmNW9mQ+HRYa4
 nmtvehNQ0wUeQhKDtKNVOGkan56boDkMZgxJz/+GAXH6e+7p2VImphjKpO/2dQj8p5mQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E9RDO+mu4zOwSEJ716yo61Qz/xnDxFXm4Etyq0Z0RWE=; b=A/mm92bkohOf/qmbDHC230v1xE
 WUrAx+nOrWUTJhX4DSCyNuy1waMUw9JiyuadZBbNEoQepmuQROvSZQ34MvDF/4B95tWKAg8pjFc9c
 eDth80h3BDr8hzTqsskxiZe4vYcy68HMBFQwcdYl8wUwQ3j17tH9g2nLqy9CA+B7bvwA=;
Received: from mail-lj1-f182.google.com ([209.85.208.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qXDgq-009EC9-0V for jfs-discussion@lists.sourceforge.net;
 Sat, 19 Aug 2023 04:35:59 +0000
Received: by mail-lj1-f182.google.com with SMTP id
 38308e7fff4ca-2ba1e9b1fa9so23708761fa.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 18 Aug 2023 21:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1692419749; x=1693024549;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=E9RDO+mu4zOwSEJ716yo61Qz/xnDxFXm4Etyq0Z0RWE=;
 b=R4WVLmz85gXbiZSANPHdMu3UK92btPoCkKlfVsdjxVVHj6uivXpvlPi5UT3us0hoOX
 MBVKgDBpK+nW/qskN1URjcKwyFtND6PwzOWxXIHDu1qxQEMRq5Pjdf15bbw3CF5GSENN
 cIc24CNROHF3jUvsO/ec03liqyq/xlomEoxULxBkzQASEgT7mywYpkmE5/aSRaE01iY+
 LJ6gOl+qipqLVYfQLrQcYz2mGM5fxUjPNlmwRzRFB9Yf3OVkS9bHsvhPI4ge+bHmhzDJ
 vbQIr9AZK5y2jZbuO9EIYwTvilo4YDGi/eSDf/anSKRqF3PlnH3KS5VqXitqdXQpJ12S
 XFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692419749; x=1693024549;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=E9RDO+mu4zOwSEJ716yo61Qz/xnDxFXm4Etyq0Z0RWE=;
 b=BwF+VVQCtGf1dhkX7QU7vwVLAeP3I6TYR8Yl0ViRZZgmjchwoyDXkS9/Ebp6DAV4IV
 KBOfIRPTZtzKOR0afslWmPZwHVGa8iCEzDjmsT6SQOX0YMziS/Qvlkmyp6E9YFE84s8c
 AIIC314BTUjwb4/3NiCFAd7tlHqTEMFYeq/qSEDFDZWnXYumswNmC7Fq5cxie/2rRqy0
 gyxXbVQIdv3ixZ4kbu83TGyaqz2AdItgQ3aJR+ap29mTV4OwdMZjw1a9qijR3Uj4WGVx
 t0QVtePrOmRP3TXej0hwhD7qBjMb89hF6NEcDuu05TUfwYe7BOxUPZp2vTC0uPEKIo5o
 E+lw==
X-Gm-Message-State: AOJu0Yxz4vP5wKDX8bnVXzzLqf5mfWmKu+cZI6i68ZcMmzPJxEqxgRwF
 dLWhnjhTKx3/M0xKCAbneGABw12THp0q7cz7pGY=
X-Google-Smtp-Source: AGHT+IF8OAfn7lkBb+InQvpKMkIb+K37Z90E3TnGBaNlzHc4x7WwpS2lzxlJ6a5y0qpTlajnEBSjEwvtr99f082U4GY=
X-Received: by 2002:a2e:a309:0:b0:2b5:68ad:291f with SMTP id
 l9-20020a2ea309000000b002b568ad291fmr777624lje.19.1692419748974; Fri, 18 Aug
 2023 21:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <20230817002232.80079-1-linux@treblig.org>
In-Reply-To: <20230817002232.80079-1-linux@treblig.org>
Date: Fri, 18 Aug 2023 23:35:37 -0500
Message-ID: <CAH2r5mtQCJZj7THQ7Kenx5sRS9frQNsJ7qkG0eKKy31JPcxiPQ@mail.gmail.com>
To: linux@treblig.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  tentatively merged to cifs-2.6.git for-next pending additional
    testing Let me know if anyone wants to add RB or Acked-by to any of these
    or spots any issues On Wed, Aug 16, 2023 at 7:22 PM wrote: > > From: "Dr.
    David Alan Gilbert" > > The smb client and server code have (mostly) duplicated
    code > for unicode manipulation, in particular upper case ha [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [smfrench[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
X-Headers-End: 1qXDgq-009EC9-0V
Subject: Re: [Jfs-discussion] [PATCH v5 0/4] dedupe smb unicode files
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
From: Steve French via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Steve French <smfrench@gmail.com>
Cc: pc@manguebit.com, linux-cifs@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 tom@talpey.com, "Dr. David Alan Gilbert" <dave@treblig.org>,
 krisman@collabora.com, linkinjeon@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

dGVudGF0aXZlbHkgbWVyZ2VkIHRvIGNpZnMtMi42LmdpdCBmb3ItbmV4dCBwZW5kaW5nIGFkZGl0
aW9uYWwgdGVzdGluZwoKTGV0IG1lIGtub3cgaWYgYW55b25lIHdhbnRzIHRvIGFkZCBSQiBvciBB
Y2tlZC1ieSB0byBhbnkgb2YgdGhlc2Ugb3IKc3BvdHMgYW55IGlzc3VlcwoKT24gV2VkLCBBdWcg
MTYsIDIwMjMgYXQgNzoyMuKAr1BNIDxsaW51eEB0cmVibGlnLm9yZz4gd3JvdGU6Cj4KPiBGcm9t
OiAiRHIuIERhdmlkIEFsYW4gR2lsYmVydCIgPGRhdmVAdHJlYmxpZy5vcmc+Cj4KPiBUaGUgc21i
IGNsaWVudCBhbmQgc2VydmVyIGNvZGUgaGF2ZSAobW9zdGx5KSBkdXBsaWNhdGVkIGNvZGUKPiBm
b3IgdW5pY29kZSBtYW5pcHVsYXRpb24sIGluIHBhcnRpY3VsYXIgdXBwZXIgY2FzZSBoYW5kbGlu
Zy4KPgo+IEZsYXR0ZW4gdGhpcyBsb3QgaW50byBzaGFyZWQgY29kZS4KPgo+IFRoZXJlJ3Mgc29t
ZSBjb2RlIHRoYXQncyBzbGlnaHRseSBkaWZmZXJlbnQgYmV0d2VlbiB0aGUgdHdvLCBhbmQKPiBJ
J3ZlIG5vdCBhdHRlbXB0ZWQgdG8gc2hhcmUgdGhhdCAtIHRoaXMgc2hvdWxkIGJlIHN0cmljdGx5
IGEgbm8KPiBiZWhhdmlvdXIgY2hhbmdlIHNldC4KPgo+IEluIGFkZGl0aW9uLCB0aGUgc2FtZSB0
YWJsZXMgYW5kIGNvZGUgYXJlIHNoYXJlZCBpbiBqZnMsIGhvd2V2ZXIKPiB0aGVyZSdzIHZlcnkg
bGl0dGxlIHRlc3RpbmcgYXZhaWxhYmxlIGZvciB0aGUgdW5pY29kZSBpbiB0aGVyZSwKPiBzbyBq
dXN0IHNoYXJlIHRoZSByYXcgZGF0YSB0YWJsZXMuCj4KPiBJIHN1c3BlY3QgdGhlcmUncyBtb3Jl
IFVDUy0yIGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkLCBpbiB0aGUgTkxTIGNvZGUKPiBhbmQgaW4g
dGhlIFVDUy0yIGNvZGUgdXNlZCBieSB0aGUgRUZJIGludGVyZmFjZXMuCj4KPiBMaWdodGx5IHRl
c3RlZCB3aXRoIGEgbW9kdWxlIGFuZCBhIG1vbm9saXRoaWMgYnVpbGQsIGFuZCBqdXN0IG1vdW50
aW5nCj4gaXRzZWxmLgo+Cj4gVGhpcyBkdXBlIHdhcyBmb3VuZCB1c2luZyBQTUQ6Cj4gICBodHRw
czovL3BtZC5naXRodWIuaW8vcG1kL3BtZF91c2VyZG9jc19jcGQuaHRtbAo+Cj4gRGF2ZQo+Cj4g
VmVyc2lvbiA1Cj4gICBBZGQgc29tZSAod2NoYXJfdCAqKSBjYXN0cyB0byBrZWVwIHNwYXJzZQo+
ICAgaGFwcHksIGFzIHNwb3R0ZWQgYnkga2VybmVsIHRlc3Qgcm9ib3QKPgo+IERyLiBEYXZpZCBB
bGFuIEdpbGJlcnQgKDQpOgo+ICAgZnMvc21iOiBSZW1vdmUgdW5pY29kZSAnbG93ZXInIHRhYmxl
cwo+ICAgZnMvc21iOiBTd2luZyB1bmljb2RlIGNvbW1vbiBjb2RlIGZyb20gc21iLT5OTFMKPiAg
IGZzL3NtYi9jbGllbnQ6IFVzZSBjb21tb24gY29kZSBpbiBjbGllbnQKPiAgIGZzL2pmczogVXNl
IGNvbW1vbiB1Y3MyIHVwcGVyIGNhc2UgdGFibGUKPgo+ICBmcy9qZnMvS2NvbmZpZyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBmcy9qZnMvTWFrZWZpbGUgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZnMvamZzL2pmc191bmljb2RlLmgg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDE3ICstCj4gIGZzL2pmcy9qZnNfdW5pdXByLmMg
ICAgICAgICAgICAgICAgICAgICAgICAgICB8IDEyMSAtLS0tLS0tCj4gIGZzL25scy9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgOCArCj4gIGZzL25scy9NYWtlZmls
ZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4gIGZzL25scy9ubHNfdWNz
Ml9kYXRhLmggICAgICAgICAgICAgICAgICAgICAgICB8ICAxNSArCj4gIC4uLi9zZXJ2ZXIvdW5p
dXByLmggPT4gbmxzL25sc191Y3MyX3V0aWxzLmN9ICB8IDE1NiArLS0tLS0tLS0KPiAgZnMvbmxz
L25sc191Y3MyX3V0aWxzLmggICAgICAgICAgICAgICAgICAgICAgIHwgMjg1ICsrKysrKysrKysr
KysrKwo+ICBmcy9zbWIvY2xpZW50L0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgfCAg
IDEgKwo+ICBmcy9zbWIvY2xpZW50L2NpZnNfdW5pY29kZS5jICAgICAgICAgICAgICAgICAgfCAg
IDEgLQo+ICBmcy9zbWIvY2xpZW50L2NpZnNfdW5pY29kZS5oICAgICAgICAgICAgICAgICAgfCAz
MzAgKy0tLS0tLS0tLS0tLS0tLS0tCj4gIGZzL3NtYi9jbGllbnQvY2lmc191bml1cHIuaCAgICAg
ICAgICAgICAgICAgICB8IDIzOSAtLS0tLS0tLS0tLS0tCj4gIGZzL3NtYi9jbGllbnQvc21iMnBk
dS5jICAgICAgICAgICAgICAgICAgICAgICB8ICAgNCArLQo+ICBmcy9zbWIvc2VydmVyL0tjb25m
aWcgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+ICBmcy9zbWIvc2VydmVyL3VuaWNv
ZGUuYyAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgLQo+ICBmcy9zbWIvc2VydmVyL3VuaWNv
ZGUuaCAgICAgICAgICAgICAgICAgICAgICAgfCAzMjUgKy0tLS0tLS0tLS0tLS0tLS0KPiAgMTcg
ZmlsZXMgY2hhbmdlZCwgMzQyIGluc2VydGlvbnMoKyksIDExNjYgZGVsZXRpb25zKC0pCj4gIGRl
bGV0ZSBtb2RlIDEwMDY0NCBmcy9qZnMvamZzX3VuaXVwci5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCBmcy9ubHMvbmxzX3VjczJfZGF0YS5oCj4gIHJlbmFtZSBmcy97c21iL3NlcnZlci91bml1cHIu
aCA9PiBubHMvbmxzX3VjczJfdXRpbHMuY30gKDUwJSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGZz
L25scy9ubHNfdWNzMl91dGlscy5oCj4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBmcy9zbWIvY2xpZW50
L2NpZnNfdW5pdXByLmgKPgo+IC0tCj4gMi40MS4wCj4KCgotLSAKVGhhbmtzLAoKU3RldmUKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vz
c2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9u
Cg==
