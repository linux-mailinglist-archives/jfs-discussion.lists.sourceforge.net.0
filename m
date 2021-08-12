Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C55D13EA801
	for <lists+jfs-discussion@lfdr.de>; Thu, 12 Aug 2021 17:52:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mECzr-0008Eh-SV; Thu, 12 Aug 2021 15:51:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <pali@kernel.org>)
 id 1mECzq-0008EY-NR; Thu, 12 Aug 2021 15:51:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=48aSJt2HhoG81msyvgDBhLaPsUpEnlOwNoBTQN2TXoc=; b=MZtsOoLq3eVTXUMMGjLsM6EPmO
 XRGhm+9GAtyPRp86Z5MPvmJ8z42fEfZo+W4/AkY4AWZWO4TEoXU+2tAtldYQAVUDx1Mxy7wzWFjyC
 s8qUu6GuZ34eIlmLQ9IA8JGNrRRoVlW3qR2Zuea1bxW43DOCZ2/uJALy5RWeoxILliKE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=48aSJt2HhoG81msyvgDBhLaPsUpEnlOwNoBTQN2TXoc=; b=NvvdLPnZOFxtHuLDj071pkB0/E
 kdw4LqRobgcurWV4ddGUHNrIDkPVWwmjbe7x5xcHd2boGkS/jW2gSKc18s+M3ptHC9XprfK89WNef
 wlKxvbbd/SRtUWBqv3XQNHu6H9rfbzemNCINQRhAMF1NYMIhUFSkr2wFuEZFSPNsnU8A=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mECzl-0007dG-RG; Thu, 12 Aug 2021 15:51:54 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C483160E93;
 Thu, 12 Aug 2021 15:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628783497;
 bh=uXlwixVhz3r12PQwZ371Hh89I7lhiqCjmhBVz7o2Ak4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Cic9I+DISQwO/7rbHdOuiwhmdY0BtVKNXk4NBm2OtzaBHSzR4+x5sKzH7VkDpBbEQ
 jObXE6oeSrJYmxR+Mn6HwvOD3dXHD7v2PFU+FQpw0w0FtlfZxm3O9qeEuYKSa5OeM+
 mKzLVDIs3Lxx5JU2Alodr8Eg86SsQoRNQdryiH5OJzwmQPqkxMNWE7SBa+g0+pQyBg
 BDpfvr/1lL1Rfccd+hk+7wBAoP06aokxoGmsIxfYoqs05btBmbrkbwGv41oidLMCuw
 YkPC1ZsxTxjZ0pTqO+1S2V3prENsgAi0OqPoIG2PU2oVYAvkegeZo2aLOYU2u3vzwP
 AJpTaH+M94ccg==
Received: by pali.im (Postfix)
 id 6086572F; Thu, 12 Aug 2021 17:51:34 +0200 (CEST)
Date: Thu, 12 Aug 2021 17:51:34 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Jan Kara <jack@suse.cz>
Message-ID: <20210812155134.g67ncugjvruos3cy@pali>
References: <20210808162453.1653-1-pali@kernel.org>
 <20210808162453.1653-4-pali@kernel.org>
 <20210812141736.GE14675@quack2.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812141736.GE14675@quack2.suse.cz>
User-Agent: NeoMutt/20180716
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1mECzl-0007dG-RG
Subject: Re: [Jfs-discussion] [RFC PATCH 03/20] udf: Fix iocharset=utf8
 mount option
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
 "Theodore Y . Ts'o" <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Anton Altaparmakov <anton@tuxera.com>,
 Christoph Hellwig <hch@infradead.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Pavel Machek <pavel@ucw.cz>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Marek =?utf-8?B?QmVow7pu?= <marek.behun@nic.cz>,
 Salah Triki <salah.triki@gmail.com>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1cnNkYXkgMTIgQXVndXN0IDIwMjEgMTY6MTc6MzYgSmFuIEthcmEgd3JvdGU6Cj4gT24g
U3VuIDA4LTA4LTIxIDE4OjI0OjM2LCBQYWxpIFJvaMOhciB3cm90ZToKPiA+IEN1cnJlbnRseSBp
b2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24gaXMgYnJva2VuLiBUbyB1c2UgVVRGLTggYXMgaW9j
aGFyc2V0LAo+ID4gaXQgaXMgcmVxdWlyZWQgdG8gdXNlIHV0ZjggbW91bnQgb3B0aW9uLgo+ID4g
Cj4gPiBGaXggaW9jaGFyc2V0PXV0ZjggbW91bnQgb3B0aW9uIHRvIHVzZSBiZSBlcXVpdmFsZW50
IHRvIHRoZSB1dGY4IG1vdW50Cj4gPiBvcHRpb24uCj4gPiAKPiA+IElmIFVURi04IGFzIGlvY2hh
cnNldCBpcyB1c2VkIHRoZW4gc19ubHNfbWFwIGlzIHNldCB0byBOVUxMLiBTbyBzaW1wbGlmeQo+
ID4gY29kZSBhcm91bmQsIHJlbW92ZSBVREZfRkxBR19OTFNfTUFQIGFuZCBVREZfRkxBR19VVEY4
IGZsYWdzIGFzIHRvCj4gPiBkaXN0aW5ndWlzaCBiZXR3ZWVuIFVURi04IGFuZCBub24tVVRGLTgg
aXQgaXMgbmVlZGVkIGp1c3QgdG8gY2hlY2sgaWYKPiA+IHNfbmxzX21hcCBzZXQgdG8gTlVMTCBv
ciBub3QuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5v
cmc+Cj4gCj4gVGhhbmtzIGZvciB0aGUgY2xlYW51cC4gSXQgbG9va3MgZ29vZC4gRmVlbCBmcmVl
IHRvIGFkZDoKPiAKPiBSZXZpZXdlZC1ieTogSmFuIEthcmEgPGphY2tAc3VzZS5jej4KPiAKPiBP
ciBzaG91bGQgSSB0YWtlIHRoaXMgcGF0Y2ggdGhyb3VnaCBteSB0cmVlPwoKSGVsbG8hIFBhdGNo
ZXMgYXJlIGp1c3QgUkZDLCBtb3N0bHkgdW50ZXN0ZWQgYW5kIG5vdCByZWFkeSBmb3IgbWVyZ2lu
Zy4KSSB3aWxsIHdhaXQgZm9yIGZlZWRiYWNrIGFuZCB0aGVuIEkgZG8gbW9yZSB0ZXN0aW5nIG5h
ZCBwcmVwYXJlIG5ldwpwYXRjaCBzZXJpZXMuCgo+IAo+IAkJCQkJCQkJSG9uemEKPiAKPiAKPiA+
IC0tLQo+ID4gIGZzL3VkZi9zdXBlci5jICAgfCA1MCArKysrKysrKysrKysrKysrKystLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICBmcy91ZGYvdWRmX3NiLmggIHwgIDIgLS0KPiA+
ICBmcy91ZGYvdW5pY29kZS5jIHwgIDQgKystLQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMjEgaW5z
ZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9mcy91ZGYv
c3VwZXIuYyBiL2ZzL3VkZi9zdXBlci5jCj4gPiBpbmRleCAyZjgzYzEyMDRlMjAuLjZlOGMyOTEw
N2IwNCAxMDA2NDQKPiA+IC0tLSBhL2ZzL3VkZi9zdXBlci5jCj4gPiArKysgYi9mcy91ZGYvc3Vw
ZXIuYwo+ID4gQEAgLTM0OSwxMCArMzQ5LDEwIEBAIHN0YXRpYyBpbnQgdWRmX3Nob3dfb3B0aW9u
cyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgc3RydWN0IGRlbnRyeSAqcm9vdCkKPiA+ICAJCXNlcV9w
cmludGYoc2VxLCAiLGxhc3RibG9jaz0ldSIsIHNiaS0+c19sYXN0X2Jsb2NrKTsKPiA+ICAJaWYg
KHNiaS0+c19hbmNob3IgIT0gMCkKPiA+ICAJCXNlcV9wcmludGYoc2VxLCAiLGFuY2hvcj0ldSIs
IHNiaS0+c19hbmNob3IpOwo+ID4gLQlpZiAoVURGX1FVRVJZX0ZMQUcoc2IsIFVERl9GTEFHX1VU
RjgpKQo+ID4gLQkJc2VxX3B1dHMoc2VxLCAiLHV0ZjgiKTsKPiA+IC0JaWYgKFVERl9RVUVSWV9G
TEFHKHNiLCBVREZfRkxBR19OTFNfTUFQKSAmJiBzYmktPnNfbmxzX21hcCkKPiA+ICsJaWYgKHNi
aS0+c19ubHNfbWFwKQo+ID4gIAkJc2VxX3ByaW50ZihzZXEsICIsaW9jaGFyc2V0PSVzIiwgc2Jp
LT5zX25sc19tYXAtPmNoYXJzZXQpOwo+ID4gKwllbHNlCj4gPiArCQlzZXFfcHV0cyhzZXEsICIs
aW9jaGFyc2V0PXV0ZjgiKTsKPiA+ICAKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4gQEAgLTU1
OCwxOSArNTU4LDI0IEBAIHN0YXRpYyBpbnQgdWRmX3BhcnNlX29wdGlvbnMoY2hhciAqb3B0aW9u
cywgc3RydWN0IHVkZl9vcHRpb25zICp1b3B0LAo+ID4gIAkJCS8qIElnbm9yZWQgKG5ldmVyIGlt
cGxlbWVudGVkIHByb3Blcmx5KSAqLwo+ID4gIAkJCWJyZWFrOwo+ID4gIAkJY2FzZSBPcHRfdXRm
ODoKPiA+IC0JCQl1b3B0LT5mbGFncyB8PSAoMSA8PCBVREZfRkxBR19VVEY4KTsKPiA+ICsJCQlp
ZiAoIXJlbW91bnQpIHsKPiA+ICsJCQkJdW5sb2FkX25scyh1b3B0LT5ubHNfbWFwKTsKPiA+ICsJ
CQkJdW9wdC0+bmxzX21hcCA9IE5VTEw7Cj4gPiArCQkJfQo+ID4gIAkJCWJyZWFrOwo+ID4gIAkJ
Y2FzZSBPcHRfaW9jaGFyc2V0Ogo+ID4gIAkJCWlmICghcmVtb3VudCkgewo+ID4gLQkJCQlpZiAo
dW9wdC0+bmxzX21hcCkKPiA+IC0JCQkJCXVubG9hZF9ubHModW9wdC0+bmxzX21hcCk7Cj4gPiAt
CQkJCS8qCj4gPiAtCQkJCSAqIGxvYWRfbmxzKCkgZmFpbHVyZSBpcyBoYW5kbGVkIGxhdGVyIGlu
Cj4gPiAtCQkJCSAqIHVkZl9maWxsX3N1cGVyKCkgYWZ0ZXIgYWxsIG9wdGlvbnMgYXJlCj4gPiAt
CQkJCSAqIHBhcnNlZC4KPiA+IC0JCQkJICovCj4gPiArCQkJCXVubG9hZF9ubHModW9wdC0+bmxz
X21hcCk7Cj4gPiArCQkJCXVvcHQtPm5sc19tYXAgPSBOVUxMOwo+ID4gKwkJCX0KPiA+ICsJCQkv
KiBXaGVuIG5sc19tYXAgaXMgbm90IGxvYWRlZCB0aGVuIFVURi04IGlzIHVzZWQgKi8KPiA+ICsJ
CQlpZiAoIXJlbW91bnQgJiYgc3RyY21wKGFyZ3NbMF0uZnJvbSwgInV0ZjgiKSAhPSAwKSB7Cj4g
PiAgCQkJCXVvcHQtPm5sc19tYXAgPSBsb2FkX25scyhhcmdzWzBdLmZyb20pOwo+ID4gLQkJCQl1
b3B0LT5mbGFncyB8PSAoMSA8PCBVREZfRkxBR19OTFNfTUFQKTsKPiA+ICsJCQkJaWYgKCF1b3B0
LT5ubHNfbWFwKSB7Cj4gPiArCQkJCQlwcl9lcnIoImlvY2hhcnNldCAlcyBub3QgZm91bmRcbiIs
Cj4gPiArCQkJCQkJYXJnc1swXS5mcm9tKTsKPiA+ICsJCQkJCXJldHVybiAwOwo+ID4gKwkJCQl9
Cj4gPiAgCQkJfQo+ID4gIAkJCWJyZWFrOwo+ID4gIAkJY2FzZSBPcHRfdWZvcmdldDoKPiA+IEBA
IC0yMTM5LDIxICsyMTQ0LDYgQEAgc3RhdGljIGludCB1ZGZfZmlsbF9zdXBlcihzdHJ1Y3Qgc3Vw
ZXJfYmxvY2sgKnNiLCB2b2lkICpvcHRpb25zLCBpbnQgc2lsZW50KQo+ID4gIAlpZiAoIXVkZl9w
YXJzZV9vcHRpb25zKChjaGFyICopb3B0aW9ucywgJnVvcHQsIGZhbHNlKSkKPiA+ICAJCWdvdG8g
cGFyc2Vfb3B0aW9uc19mYWlsdXJlOwo+ID4gIAo+ID4gLQlpZiAodW9wdC5mbGFncyAmICgxIDw8
IFVERl9GTEFHX1VURjgpICYmCj4gPiAtCSAgICB1b3B0LmZsYWdzICYgKDEgPDwgVURGX0ZMQUdf
TkxTX01BUCkpIHsKPiA+IC0JCXVkZl9lcnIoc2IsICJ1dGY4IGNhbm5vdCBiZSBjb21iaW5lZCB3
aXRoIGlvY2hhcnNldFxuIik7Cj4gPiAtCQlnb3RvIHBhcnNlX29wdGlvbnNfZmFpbHVyZTsKPiA+
IC0JfQo+ID4gLQlpZiAoKHVvcHQuZmxhZ3MgJiAoMSA8PCBVREZfRkxBR19OTFNfTUFQKSkgJiYg
IXVvcHQubmxzX21hcCkgewo+ID4gLQkJdW9wdC5ubHNfbWFwID0gbG9hZF9ubHNfZGVmYXVsdCgp
Owo+ID4gLQkJaWYgKCF1b3B0Lm5sc19tYXApCj4gPiAtCQkJdW9wdC5mbGFncyAmPSB+KDEgPDwg
VURGX0ZMQUdfTkxTX01BUCk7Cj4gPiAtCQllbHNlCj4gPiAtCQkJdWRmX2RlYnVnKCJVc2luZyBk
ZWZhdWx0IE5MUyBtYXBcbiIpOwo+ID4gLQl9Cj4gPiAtCWlmICghKHVvcHQuZmxhZ3MgJiAoMSA8
PCBVREZfRkxBR19OTFNfTUFQKSkpCj4gPiAtCQl1b3B0LmZsYWdzIHw9ICgxIDw8IFVERl9GTEFH
X1VURjgpOwo+ID4gLQo+ID4gIAlmaWxlc2V0LmxvZ2ljYWxCbG9ja051bSA9IDB4RkZGRkZGRkY7
Cj4gPiAgCWZpbGVzZXQucGFydGl0aW9uUmVmZXJlbmNlTnVtID0gMHhGRkZGOwo+ID4gIAo+ID4g
QEAgLTIzMDgsOCArMjI5OCw3IEBAIHN0YXRpYyBpbnQgdWRmX2ZpbGxfc3VwZXIoc3RydWN0IHN1
cGVyX2Jsb2NrICpzYiwgdm9pZCAqb3B0aW9ucywgaW50IHNpbGVudCkKPiA+ICBlcnJvcl9vdXQ6
Cj4gPiAgCWlwdXQoc2JpLT5zX3ZhdF9pbm9kZSk7Cj4gPiAgcGFyc2Vfb3B0aW9uc19mYWlsdXJl
Ogo+ID4gLQlpZiAodW9wdC5ubHNfbWFwKQo+ID4gLQkJdW5sb2FkX25scyh1b3B0Lm5sc19tYXAp
Owo+ID4gKwl1bmxvYWRfbmxzKHVvcHQubmxzX21hcCk7Cj4gPiAgCWlmIChsdmlkX29wZW4pCj4g
PiAgCQl1ZGZfY2xvc2VfbHZpZChzYik7Cj4gPiAgCWJyZWxzZShzYmktPnNfbHZpZF9iaCk7Cj4g
PiBAQCAtMjM1OSw4ICsyMzQ4LDcgQEAgc3RhdGljIHZvaWQgdWRmX3B1dF9zdXBlcihzdHJ1Y3Qg
c3VwZXJfYmxvY2sgKnNiKQo+ID4gIAlzYmkgPSBVREZfU0Ioc2IpOwo+ID4gIAo+ID4gIAlpcHV0
KHNiaS0+c192YXRfaW5vZGUpOwo+ID4gLQlpZiAoVURGX1FVRVJZX0ZMQUcoc2IsIFVERl9GTEFH
X05MU19NQVApKQo+ID4gLQkJdW5sb2FkX25scyhzYmktPnNfbmxzX21hcCk7Cj4gPiArCXVubG9h
ZF9ubHMoc2JpLT5zX25sc19tYXApOwo+ID4gIAlpZiAoIXNiX3Jkb25seShzYikpCj4gPiAgCQl1
ZGZfY2xvc2VfbHZpZChzYik7Cj4gPiAgCWJyZWxzZShzYmktPnNfbHZpZF9iaCk7Cj4gPiBkaWZm
IC0tZ2l0IGEvZnMvdWRmL3VkZl9zYi5oIGIvZnMvdWRmL3VkZl9zYi5oCj4gPiBpbmRleCA3NThl
ZmU1NTdhMTkuLjRmYTYyMDU0M2QzMCAxMDA2NDQKPiA+IC0tLSBhL2ZzL3VkZi91ZGZfc2IuaAo+
ID4gKysrIGIvZnMvdWRmL3VkZl9zYi5oCj4gPiBAQCAtMjAsOCArMjAsNiBAQAo+ID4gICNkZWZp
bmUgVURGX0ZMQUdfVU5ERUxFVEUJCTYKPiA+ICAjZGVmaW5lIFVERl9GTEFHX1VOSElERQkJCTcK
PiA+ICAjZGVmaW5lIFVERl9GTEFHX1ZBUkNPTlYJCTgKPiA+IC0jZGVmaW5lIFVERl9GTEFHX05M
U19NQVAJCTkKPiA+IC0jZGVmaW5lIFVERl9GTEFHX1VURjgJCQkxMAo+ID4gICNkZWZpbmUgVURG
X0ZMQUdfVUlEX0ZPUkdFVCAgICAgMTEgICAgLyogc2F2ZSAtMSBmb3IgdWlkIHRvIGRpc2sgKi8K
PiA+ICAjZGVmaW5lIFVERl9GTEFHX0dJRF9GT1JHRVQgICAgIDEyCj4gPiAgI2RlZmluZSBVREZf
RkxBR19VSURfU0VUCTEzCj4gPiBkaWZmIC0tZ2l0IGEvZnMvdWRmL3VuaWNvZGUuYyBiL2ZzL3Vk
Zi91bmljb2RlLmMKPiA+IGluZGV4IDVmY2ZhOTY0NjNlYi4uNjIyNTY5MDA3YjUzIDEwMDY0NAo+
ID4gLS0tIGEvZnMvdWRmL3VuaWNvZGUuYwo+ID4gKysrIGIvZnMvdWRmL3VuaWNvZGUuYwo+ID4g
QEAgLTE3Nyw3ICsxNzcsNyBAQCBzdGF0aWMgaW50IHVkZl9uYW1lX2Zyb21fQ1MwKHN0cnVjdCBz
dXBlcl9ibG9jayAqc2IsCj4gPiAgCQlyZXR1cm4gMDsKPiA+ICAJfQo+ID4gIAo+ID4gLQlpZiAo
VURGX1FVRVJZX0ZMQUcoc2IsIFVERl9GTEFHX05MU19NQVApKQo+ID4gKwlpZiAoVURGX1NCKHNi
KS0+c19ubHNfbWFwKQo+ID4gIAkJY29udl9mID0gVURGX1NCKHNiKS0+c19ubHNfbWFwLT51bmky
Y2hhcjsKPiA+ICAJZWxzZQo+ID4gIAkJY29udl9mID0gTlVMTDsKPiA+IEBAIC0yODUsNyArMjg1
LDcgQEAgc3RhdGljIGludCB1ZGZfbmFtZV90b19DUzAoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwK
PiA+ICAJaWYgKG9jdV9tYXhfbGVuIDw9IDApCj4gPiAgCQlyZXR1cm4gMDsKPiA+ICAKPiA+IC0J
aWYgKFVERl9RVUVSWV9GTEFHKHNiLCBVREZfRkxBR19OTFNfTUFQKSkKPiA+ICsJaWYgKFVERl9T
QihzYiktPnNfbmxzX21hcCkKPiA+ICAJCWNvbnZfZiA9IFVERl9TQihzYiktPnNfbmxzX21hcC0+
Y2hhcjJ1bmk7Cj4gPiAgCWVsc2UKPiA+ICAJCWNvbnZfZiA9IE5VTEw7Cj4gPiAtLSAKPiA+IDIu
MjAuMQo+ID4gCj4gLS0gCj4gSmFuIEthcmEgPGphY2tAc3VzZS5jb20+Cj4gU1VTRSBMYWJzLCBD
UgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
