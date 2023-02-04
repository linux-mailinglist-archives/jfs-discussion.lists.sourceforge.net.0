Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E7468A98D
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Feb 2023 11:57:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pOGEW-0005HC-Ox;
	Sat, 04 Feb 2023 10:57:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1pOGEV-0005H3-KM;
 Sat, 04 Feb 2023 10:57:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hNLyRZpDtB3mKYy/Fjsuj908VxZXamf1tp3jPTLudUs=; b=NKx1Bf4A694Z+v76XAQY31sAzU
 UKhq0ybuaVnqgsX6jgsRF2pFFQf4ghVDHpDruPSTMIWbicC6AXdsFwKOg7B/mSUKzW+86C4wRLDNE
 4a1jFzFYsPAzdW3ssjXeTtu1XnNFp/JW5OmXmmFFz01zjJl68HjpVoK9B/Ybf4c6d84M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hNLyRZpDtB3mKYy/Fjsuj908VxZXamf1tp3jPTLudUs=; b=TD4d1Xbcu8hPOgm+YAZMmhIXGb
 +5RsVP5oFT2hzs8VK1P5xABnPRZSYhIq3gr1bLDDrhXf7lT8kTz847by4LHLBSOzzwRDfETn2PUJw
 Jngi3K5diGUUaxKs+IuWs6GRNK0KB/DVIkltZ1LFUuU81/wNqyvt4kwe5jT7vRUz0gX4=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pOGES-0005xi-7J; Sat, 04 Feb 2023 10:57:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 81404CE098E;
 Sat,  4 Feb 2023 10:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83787C433D2;
 Sat,  4 Feb 2023 10:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1675508226;
 bh=kMAzJD4jato0wOMCl0gOK8URH/g9P1F1yx8fLEcqu0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TIJDT+KTE+1f1XIgi0D0hor8jwY2nRuIV6FphVBYHrI/A+Pdbv6lVS7SH0Gn5I/wa
 v9gza/eegV5E3ESm3GEymToXDZ56i43ihjAqoJf4Ncx9ZqqPn3R09ZUMbgPseVFdNB
 /kdreIycg5WXiL0rd71I5R8njA6iiwlmz/3J6t+MraPdnpHbtskpoFLJMHnSFNezm/
 QR5pWaAKEBAkMrGQjwegsNDhwKVrRUOyHCnfg52Ps3yDCjEviweJC8BlkxUmLv7b/L
 KUPS4QpKJsvQcQHEY7x9Rh1pcvx00I0ElnHNA5Sad3eq70I3JkR0EvmMybCnugBBFi
 kZ1XOyrRht9wQ==
Received: by pali.im (Postfix)
 id 5045F976; Sat,  4 Feb 2023 11:57:03 +0100 (CET)
Date: Sat, 4 Feb 2023 11:57:03 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Message-ID: <20230204105703.pnc6vcy4hvmvvm3b@pali>
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-2-pali@kernel.org>
 <874jsyvje6.fsf@mail.parknet.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874jsyvje6.fsf@mail.parknet.co.jp>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tuesday 10 January 2023 18:17:05 OGAWA Hirofumi wrote:
   > Pali Rohár <pali@kernel.org> writes: > > > Currently iocharset=utf8 mount
    option is broken and error is printed to > > dmesg when it is use [...] 
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.73.55 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pOGES-0005xi-7J
Subject: Re: [Jfs-discussion] [RFC PATCH v2 01/18] fat: Fix iocharset=utf8
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Pavel Machek <pavel@ucw.cz>,
 linux-cifs@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Salah Triki <salah.triki@gmail.com>, Shyam Prasad N <sprasad@microsoft.com>,
 Tom Talpey <tom@talpey.com>, Kari Argillander <kari.argillander@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anton Altaparmakov <anton@tuxera.com>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>, linux-ntfs-dev@lists.sourceforge.net,
 Paulo Alcantara <pc@cjr.nz>, linux-kernel@vger.kernel.org,
 Ronnie Sahlberg <lsahlber@redhat.com>, Steve French <sfrench@samba.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlc2RheSAxMCBKYW51YXJ5IDIwMjMgMTg6MTc6MDUgT0dBV0EgSGlyb2Z1bWkgd3JvdGU6
Cj4gUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JpdGVzOgo+IAo+ID4gQ3VycmVudGx5
IGlvY2hhcnNldD11dGY4IG1vdW50IG9wdGlvbiBpcyBicm9rZW4gYW5kIGVycm9yIGlzIHByaW50
ZWQgdG8KPiA+IGRtZXNnIHdoZW4gaXQgaXMgdXNlZC4gVG8gdXNlIFVURi04IGFzIGlvY2hhcnNl
dCwgaXQgaXMgcmVxdWlyZWQgdG8gdXNlCj4gPiB1dGY4PTEgbW91bnQgb3B0aW9uLgo+ID4KPiA+
IEZpeCBpb2NoYXJzZXQ9dXRmOCBtb3VudCBvcHRpb24gdG8gdXNlIGJlIGVxdWl2YWxlbnQgdG8g
dGhlIHV0Zjg9MSBtb3VudAo+ID4gb3B0aW9uIGFuZCByZW1vdmUgcHJpbnRpbmcgZXJyb3IgZnJv
bSBkbWVzZy4KPiAKPiBbLi4uXQo+IAo+ID4gLQo+ID4gLQlUaGVyZSBpcyBhbHNvIGFuIG9wdGlv
biBvZiBkb2luZyBVVEYtOCB0cmFuc2xhdGlvbnMKPiA+IC0Jd2l0aCB0aGUgdXRmOCBvcHRpb24u
Cj4gPiAtCj4gPiAtLi4gbm90ZTo6IGBgaW9jaGFyc2V0PXV0ZjhgYCBpcyBub3QgcmVjb21tZW5k
ZWQuIElmIHVuc3VyZSwgeW91IHNob3VsZCBjb25zaWRlcgo+ID4gLQkgIHRoZSB1dGY4IG9wdGlv
biBpbnN0ZWFkLgo+ID4gKwkqKnV0ZjgqKiBpcyBzdXBwb3J0ZWQgdG9vIGFuZCByZWNvbW1lbmRl
ZCB0byB1c2UuCj4gPiAgCj4gPiAgKip1dGY4PTxib29sPioqCj4gPiAtCVVURi04IGlzIHRoZSBm
aWxlc3lzdGVtIHNhZmUgdmVyc2lvbiBvZiBVbmljb2RlIHRoYXQKPiA+IC0JaXMgdXNlZCBieSB0
aGUgY29uc29sZS4gSXQgY2FuIGJlIGVuYWJsZWQgb3IgZGlzYWJsZWQKPiA+IC0JZm9yIHRoZSBm
aWxlc3lzdGVtIHdpdGggdGhpcyBvcHRpb24uCj4gPiAtCUlmICd1bmlfeGxhdGUnIGdldHMgc2V0
LCBVVEYtOCBnZXRzIGRpc2FibGVkLgo+ID4gLQlCeSBkZWZhdWx0LCBGQVRfREVGQVVMVF9VVEY4
IHNldHRpbmcgaXMgdXNlZC4KPiA+ICsJQWxpYXMgZm9yIGBgaW9jaGFyc2V0PXV0ZjhgYCBtb3Vu
dCBvcHRpb24uCj4gPiAgCj4gPiAgKip1bmlfeGxhdGU9PGJvb2w+KioKPiA+ICAJVHJhbnNsYXRl
IHVuaGFuZGxlZCBVbmljb2RlIGNoYXJhY3RlcnMgdG8gc3BlY2lhbAo+ID4gZGlmZiAtLWdpdCBh
L2ZzL2ZhdC9LY29uZmlnIGIvZnMvZmF0L0tjb25maWcKPiA+IGluZGV4IDIzOGNjNTVmODRjNC4u
ZTk4YWFhM2JiNTViIDEwMDY0NAo+ID4gLS0tIGEvZnMvZmF0L0tjb25maWcKPiA+ICsrKyBiL2Zz
L2ZhdC9LY29uZmlnCj4gPiBAQCAtOTMsMjkgKzkzLDEyIEBAIGNvbmZpZyBGQVRfREVGQVVMVF9J
T0NIQVJTRVQKPiA+ICAJICBsaWtlIEZBVCB0byB1c2UuIEl0IHNob3VsZCBwcm9iYWJseSBtYXRj
aCB0aGUgY2hhcmFjdGVyIHNldAo+ID4gIAkgIHRoYXQgbW9zdCBvZiB5b3VyIEZBVCBmaWxlc3lz
dGVtcyB1c2UsIGFuZCBjYW4gYmUgb3ZlcnJpZGRlbgo+ID4gIAkgIHdpdGggdGhlICJpb2NoYXJz
ZXQiIG1vdW50IG9wdGlvbiBmb3IgRkFUIGZpbGVzeXN0ZW1zLgo+ID4gLQkgIE5vdGUgdGhhdCAi
dXRmOCIgaXMgbm90IHJlY29tbWVuZGVkIGZvciBGQVQgZmlsZXN5c3RlbXMuCj4gPiAtCSAgSWYg
dW5zdXJlLCB5b3Ugc2hvdWxkbid0IHNldCAidXRmOCIgaGVyZSAtIHNlbGVjdCB0aGUgbmV4dCBv
cHRpb24KPiA+IC0JICBpbnN0ZWFkIGlmIHlvdSB3b3VsZCBsaWtlIHRvIHVzZSBVVEYtOCBlbmNv
ZGVkIGZpbGUgbmFtZXMgYnkgZGVmYXVsdC4KPiA+ICsJICAidXRmOCIgaXMgc3VwcG9ydGVkIHRv
byBhbmQgcmVjb21tZW5kZWQgdG8gdXNlLgo+IAo+IFRoaXMgcGF0Y2ggZml4ZXMgdGhlIGlzc3Vl
IG9mIHV0Zi04IHBhcnRpYWxseSBvbmx5LiBJIHRoaW5rIHdlIGNhbid0Cj4gc3RpbGwgcmVjb21t
ZW5kIG9ubHkgcGFydGlhbGx5IHdvcmtpbmcgb25lLgoKV2l0aCB0aGlzIHBhdGNoIEZBVF9ERUZB
VUxUX0lPQ0hBUlNFVD11dGY4IGlzIHNhbWUgd2hhdCB3YXMKRkFUX0RFRkFVTFRfVVRGOD15IHdp
dGhvdXQgdGhpcyBwYXRjaC4gQW5kIG9wdGlvbiBGQVRfREVGQVVMVF9VVEY4IHdhcwpyZWNvbW1l
bmRlZCBpbiBkZXNjcmlwdGlvbiBiZWZvcmUgInNlbGVjdCB0aGUgbmV4dCBvcHRpb24gaW5zdGVh
ZCBpZiB5b3UKd291bGQgbGlrZSB0byB1c2UgVVRGLTggZW5jb2RlZCBmaWxlIG5hbWVzIGJ5IGRl
ZmF1bHQuIgoKPiBbLi4uXQo+IAo+ID4gLQlvcHRzLT51dGY4ID0gSVNfRU5BQkxFRChDT05GSUdf
RkFUX0RFRkFVTFRfVVRGOCkgJiYgaXNfdmZhdDsKPiA+IC0KPiA+ICAJaWYgKCFvcHRpb25zKQo+
ID4gIAkJZ290byBvdXQ7Cj4gPiAgCj4gPiBAQCAtMTMxOCwxMCArMTMxNiwxNCBAQCBzdGF0aWMg
aW50IHBhcnNlX29wdGlvbnMoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgY2hhciAqb3B0aW9ucywg
aW50IGlzX3ZmYXQsCj4gPiAgCQkJCQl8IFZGQVRfU0ZOX0NSRUFURV9XSU45NTsKPiA+ICAJCQli
cmVhazsKPiA+ICAJCWNhc2UgT3B0X3V0Zjhfbm86CQkvKiAwIG9yIG5vIG9yIGZhbHNlICovCj4g
PiAtCQkJb3B0cy0+dXRmOCA9IDA7Cj4gPiArCQkJZmF0X3Jlc2V0X2lvY2hhcnNldChvcHRzKTsK
PiAKPiBUaGlzIGNoYW5nZXMgdGhlIGJlaGF2aW9yIG9mICJpb2NoYXJzZXQ9aXNvODg1OS0xLHV0
Zjg9bm8iIGZvcgo+IGV4YW1wbGUuIERvIHdlIG5lZWQgdGhpcyB1c2VyIHZpc2libGUgY2hhbmdl
IGhlcmU/CgpPaywgSSBhZ3JlZSwgd2UgZG8gbm90IHdhbnQgdG8gY2hhbmdlIGlvY2hhcnNldCB3
aGVuCiJpb2NoYXJzZXQ9aXNvODg1OS0xLHV0Zjg9bm8iIHdhcyBzcGVjaWZpZWQuIEl0IHNob3Vs
ZCBzdGF5IG9uCmlzbzg4NTktMS4KCj4gPiAgCQkJYnJlYWs7Cj4gPiAgCQljYXNlIE9wdF91dGY4
X3llczoJCS8qIGVtcHR5IG9yIDEgb3IgeWVzIG9yIHRydWUgKi8KPiA+IC0JCQlvcHRzLT51dGY4
ID0gMTsKPiA+ICsJCQlmYXRfcmVzZXRfaW9jaGFyc2V0KG9wdHMpOwo+ID4gKwkJCWlvY2hhcnNl
dCA9IGtzdHJkdXAoInV0ZjgiLCBHRlBfS0VSTkVMKTsKPiA+ICsJCQlpZiAoIWlvY2hhcnNldCkK
PiA+ICsJCQkJcmV0dXJuIC1FTk9NRU07Cj4gPiArCQkJb3B0cy0+aW9jaGFyc2V0ID0gaW9jaGFy
c2V0Owo+ID4gIAkJCWJyZWFrOwo+ID4gIAkJY2FzZSBPcHRfdW5pX3hsX25vOgkJLyogMCBvciBu
byBvciBmYWxzZSAqLwo+ID4gIAkJCW9wdHMtPnVuaWNvZGVfeGxhdGUgPSAwOwo+ID4gQEAgLTEz
NTksMTggKzEzNjEsMTEgQEAgc3RhdGljIGludCBwYXJzZV9vcHRpb25zKHN0cnVjdCBzdXBlcl9i
bG9jayAqc2IsIGNoYXIgKm9wdGlvbnMsIGludCBpc192ZmF0LAo+ID4gIAl9Cj4gPiAgCj4gPiAg
b3V0Ogo+ID4gLQkvKiBVVEYtOCBkb2Vzbid0IHByb3ZpZGUgRkFUIHNlbWFudGljcyAqLwo+ID4g
LQlpZiAoIXN0cmNtcChvcHRzLT5pb2NoYXJzZXQsICJ1dGY4IikpIHsKPiA+IC0JCWZhdF9tc2co
c2IsIEtFUk5fV0FSTklORywgInV0ZjggaXMgbm90IGEgcmVjb21tZW5kZWQgSU8gY2hhcnNldCIK
PiA+IC0JCSAgICAgICAiIGZvciBGQVQgZmlsZXN5c3RlbXMsIGZpbGVzeXN0ZW0gd2lsbCBiZSAi
Cj4gPiAtCQkgICAgICAgImNhc2Ugc2Vuc2l0aXZlISIpOwo+ID4gLQl9Cj4gPiArCW9wdHMtPnV0
ZjggPSAhc3RyY21wKG9wdHMtPmlvY2hhcnNldCwgInV0ZjgiKSAmJiBpc192ZmF0Owo+IAo+IFN0
aWxsIGJyb2tlbiwgc28gSSB0aGluayB3ZSBzdGlsbCBuZWVkIHRoZSB3YXJuaW5nIGhlcmUgKHdv
dWxkIGJlCj4gdHdlYWtlZCB3YXJuaW5nKS4KClRoZXJlIHdhcyBubyB3YXJuaW5nIGJlZm9yZSBm
b3IgdXRmOD0xLiBBbmQgd2l0aCB0aGlzIHBhdGNoCmlvY2hhcnNldD11dGY4IHNob3VsZCBoYXZl
IHNhbWUgYmVoYXZpb3IgYXMgd2hhdCB3YXMgdXRmOD0xIGJlZm9yZSB0aGlzCnBhdGNoLgoKU28g
aWYgd2Ugc2hvdWxkIHNob3cgc29tZSB3YXJuaW5nIGZvciB1dGY4PTEgdGhlbiBpdCBpcyBzb21l
aG93IG5vdApyZWxhdGVkIHRvIHRoaXMgcGF0Y2ggYW5kIGl0IHNob3VsZCBiZSBkb25lIHNlcGFy
YXRlbHksIHBvc3NpYmxlIGFsc28gdG8KdGhlIGN1cnJlbnQgY29kZWJhc2UgYW5kIGJlZm9yZSB0
aGlzIHBhdGNoLgoKPiA+ICAJLyogSWYgdXNlciBkb2Vzbid0IHNwZWNpZnkgYWxsb3dfdXRpbWUs
IGl0J3MgaW5pdGlhbGl6ZWQgZnJvbSBkbWFzay4gKi8KPiA+ICAJaWYgKG9wdHMtPmFsbG93X3V0
aW1lID09ICh1bnNpZ25lZCBzaG9ydCktMSkKPiA+ICAJCW9wdHMtPmFsbG93X3V0aW1lID0gfm9w
dHMtPmZzX2RtYXNrICYgKFNfSVdHUlAgfCBTX0lXT1RIKTsKPiA+IC0JaWYgKG9wdHMtPnVuaWNv
ZGVfeGxhdGUpCj4gPiAtCQlvcHRzLT51dGY4ID0gMDsKPiAKPiB1bmljb2RlX3hsYXRlIG9wdGlv
biBpcyBleGNsdXNpdmUgd2l0aCB1dGY4LCBuZWVkIHRvIGFkanVzdAo+IHNvbWV3aGVyZS4gKHdp
dGggdGhpcyBwYXRjaCwgdW5pY29kZV94bGF0ZSBhbmQgdXRmOCB3aWxsIHNob3dzIGJ5Cj4gc2hv
d19vcHRpb25zKCkpCgpPaywgc2VlbXMgdGhhdCB0aGVyZSBpcyBtb3JlIHdvcmsgdG8gaGFuZGxl
IHVuaWNvZGVfeGxhdGUgb3B0aW9uCmNvcnJlY3RseS4KCj4gPiArCWVsc2UgaWYgKHV0ZjgpCj4g
PiArCQlyZXR1cm4gZmF0X3V0Zjhfc3RybmljbXAobmFtZS0+bmFtZSwgc3RyLCBhbGVuKTsKPiA+
ICsJZWxzZQo+ID4gKwkJcmV0dXJuIG5sc19zdHJuaWNtcCh0LCBuYW1lLT5uYW1lLCBzdHIsIGFs
ZW4pOwo+ID4gIH0KPiAKPiBOb3Qgc3Ryb25nIG9waW5pb24gdGhvdWdoLCBtYXliZSB3ZSBiZXR0
ZXIgdG8gY29uc29saWRhdGUgdGhpcyB0byBhCj4gKGlubGluZSkgZnVuY3Rpb24/IChGV0lXLCBp
dCBtYXkgYmUgYmV0dGVyIHRvIHJlZmFjdG9yIHRvIHByb3ZpZGUgc29tZQo+IGZpbGVuYW1lIGZ1
bmN0aW9ucyB0byBoaWRlIHRoZSBkZXRhaWwgb2YgaGFuZGxpbmcgbmxzL3V0ZjgpCgpUaGlzIGxv
b2tzIGxpa2UgYW4gYW5vdGhlciBjbGVhbnVwIC8gaW1wcm92ZW1lbnQgd2hpY2ggY2FuIGJlIGRv
bmUuIEknbQpub3Qgc3VyZSBpZiBpdCBpcyBhIGdvb2QgaWRlYSB0byBwdXQgaW50byB0aGlzIHBh
dGNoIHNlcmllcyAoaXQgaXMKYWxyZWFkeSBiaWcpLgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
