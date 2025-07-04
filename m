Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0379EAF9A9F
	for <lists+jfs-discussion@lfdr.de>; Fri,  4 Jul 2025 20:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Date:To:From:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nJQQV5v4l/tAxjV2EN9xwSma7XlhzzqNfOy/ClKP3PY=; b=axkNeDxFjHIdU8awYRkZjSiZ8e
	QLvXFpJohHGhvy7vLfHrwDuZPiYauy6JyGdSx4yfj4cpnmYbiCByJGW/ZZKGpVAIvU3TAL9jshRCg
	uBImpb71Ht59khousZWLl64RtxB4bF2ZCk3i2TSez/Vdd7Pf0aAOmppVjC6VzqJNtXBY=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uXl5x-0001Oo-D7;
	Fri, 04 Jul 2025 18:25:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <slava@dubeyko.com>) id 1uXl5w-0001Oa-0G
 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 18:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NKZOXif4dY8WW9PJKNKuGFpmuROoWR4AN0EGiAV7vcE=; b=SnOuf13ArkSbBx3dfS3pbWO8SL
 3hzjIpmpnmpOswKOGNGQlGdJyKCzf20BzUbyygfDwaVT+tHgkSjMMy5S4w8dKLg7a/D27hkhnyx9l
 wyEQi9vAugp1pGzQ8AqOsmuXgQ5ITQk86m3LIyd3QEiBYV+2aGqiEBmB/EDgj8XgKBIw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NKZOXif4dY8WW9PJKNKuGFpmuROoWR4AN0EGiAV7vcE=; b=YNdyf08zKWq2bJ7fw53XYeGvkc
 1RppJr6a/Sd0gnc6AmEFFXZnMm1DuJBWS51zZ8PGOxo0IlLl933w1V1/xfYJyD14w86xfVFBNKzqk
 aP1LP3Q46vv+WfVGnkiu5p9nUBc7TILHQSm4o9Tff3CCKQ79AhFoVkR4Gnzgk3CVEgnI=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uXl5v-0001l3-I4 for jfs-discussion@lists.sourceforge.net;
 Fri, 04 Jul 2025 18:25:07 +0000
Received: by mail-qk1-f181.google.com with SMTP id
 af79cd13be357-7d0a2220fb0so165652185a.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 04 Jul 2025 11:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dubeyko-com.20230601.gappssmtp.com; s=20230601; t=1751653502; x=1752258302;
 darn=lists.sourceforge.net; 
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
 :cc:subject:date:message-id:reply-to;
 bh=NKZOXif4dY8WW9PJKNKuGFpmuROoWR4AN0EGiAV7vcE=;
 b=H9q8lxmYh+Oj0otvw1suT0x1EyEdEE2Jzll0D1eHu87oO1CHrES4SJ/4FgAHHRdf+q
 DKSyxnj2OhxJ2K6wJ7rtCWegmlfg5q575pMcHUOC2U4Gjhr5Ogd57En5ky9DQQCyFfx/
 k54cXlZJRmd1DVBYZwsQkn7Nt1zgVZ5mytvhmtHwehycq/axJIYGY6GJhjlY7dA7pMfw
 rYjxvh+eHtHCRpanOH2Bi2uUEFqLAOMHyXThkMbJqEIapHNP3wndHRjOLvMgHr5RcIfT
 oME0tFcor812g2dpukg9avXQNuDVvLjVnvCYkKZoZl/b/PvJ2nFVjFmqP/a5vKmHhrNR
 /lhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751653502; x=1752258302;
 h=mime-version:user-agent:content-transfer-encoding:autocrypt
 :references:in-reply-to:date:cc:to:from:subject:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=NKZOXif4dY8WW9PJKNKuGFpmuROoWR4AN0EGiAV7vcE=;
 b=ETsjqBnWtpUHAR/uSzrBaq07D84FcEmI1u/ZzQ6WUOF55jR0qM+UFexEf7CfVsarZj
 TZHXBbfn/xxjmsEYXoNjds5pj0PJsAeVQbEKFnSSIrQATSxO/7iswYm4JHrK0NuCDi4a
 KBYPSdYPI8anUJPSwZKijzxnJYEytLGKtdKtb7uSA0yS84vVIRqYaunHwuIgnZqZMGyG
 N+cJ/K0JjYAiKblU1R+EcXPYBqf5Azynr2WF0pwVmAFMr+l7kSEn/xyMLGVT8UbAd3gp
 AcnJZ3BGQx3uSHMZEjgd9CSFjatAzZcgFKa747xVfti311qFy8DlOKTSZOhT4x0aonZ5
 yGFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXnTUpCe8zOvpNAWi6lesxmOcMsFyvbc+fYJ9GLmWO/WSlCWwKD7eDvu6so7lsJaCLIC7hw/pW/30RoiioubA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyO2UM2Uuzqtzm0QnjORyBguFV0d0XnOTssbTiOeKFH1ZbnYbX6
 XP2amKxN1JDAWIrL7/mJQFyR6/nIadpy1x40r3tKwgdcj0/GcJHeoGmAulDedGnWpPBq4HulH4X
 O4Yrzjte7uQ==
X-Gm-Gg: ASbGncu6tJBjKLXRxC5ahtsU/AGXiIAjFysUjYrDx++XYNnexlw16jH3zI6f123r7wU
 PjhAgDWUJY5w3481DAGeQJdgh4OAfo7YjUuoSuUQLdSfxRVpXAz8WS31u5ZNrB0SMI0rF2QP3xz
 jfF2M6pyrPh+DqyL2PYbw3gIPWL2Uxt4j+8eKii55Ez6fYzYXFEs4so1hc0wy5xZrJLHHGsTcnE
 g3RcICeLCC2JG+NH4eYXdBvQFfo2Jak8oV5lWI5SB425hrU8xGoA3Z6Ma8ukTfQdGeg08YltMvN
 R9CVJtpfxk5Cm7PQdTB1rdVMP+oQ8nE3+g69WNVe8vPk0XA0Rhec2FIMSdoCFIt3zuNBl2oON5C
 O7C06R0LHWJnyGxuiZ9xqTA+xTtz3ZPg=
X-Google-Smtp-Source: AGHT+IH90uXGHA1KLkxMwBoLjKzi40wo5WwD8z6pePkSFDnX+wBofTNDe+oRgHEM+GBC/SzPv5geJw==
X-Received: by 2002:a05:6902:2808:b0:e81:b6b1:153d with SMTP id
 3f1490d57ef6-e89a0c1fb0emr3480402276.21.1751650171096; 
 Fri, 04 Jul 2025 10:29:31 -0700 (PDT)
Received: from ?IPv6:2600:1700:6476:1430:f030:281a:9e2c:722?
 ([2600:1700:6476:1430:f030:281a:9e2c:722])
 by smtp.gmail.com with ESMTPSA id
 3f1490d57ef6-e899c48b086sm742656276.42.2025.07.04.10.29.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Jul 2025 10:29:30 -0700 (PDT)
Message-ID: <d698490f3ee35889d8922f392079846b647cd47e.camel@dubeyko.com>
From: Viacheslav Dubeyko <slava@dubeyko.com>
To: Yangtao Li <frank.li@vivo.com>, axboe@kernel.dk,
 aivazian.tigran@gmail.com, 	viro@zeniv.linux.org.uk, brauner@kernel.org,
 jack@suse.cz, linkinjeon@kernel.org, 	sj1557.seo@samsung.com,
 yuezhang.mo@sony.com, glaubitz@physik.fu-berlin.de, 	shaggy@kernel.org,
 konishi.ryusuke@gmail.com, 	almaz.alexandrovich@paragon-software.com,
 me@bobcopeland.com, 	willy@infradead.org, josef@toxicpanda.com,
 kovalev@altlinux.org, dave@stgolabs.net, 	mhocko@suse.com,
 chentaotao@didiglobal.com
Date: Fri, 04 Jul 2025 10:29:27 -0700
In-Reply-To: <20250626173023.2702554-3-frank.li@vivo.com>
References: <20250626173023.2702554-1-frank.li@vivo.com>
 <20250626173023.2702554-3-frank.li@vivo.com>
Autocrypt: addr=slava@dubeyko.com; prefer-encrypt=mutual;
 keydata=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
 fAMjjkInIPg7RLGs8FiwxfcpkILP0YbVWHiNAaQ==
User-Agent: Evolution 3.56.1 (by Flathub.org) 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 2025-06-26 at 11:30 -0600, Yangtao Li wrote: > When
 iocb flags passes IOCB_DONTCACHE, use FGP_DONTCACHE mode to get > folio.
 > > Signed-off-by: Yangtao Li <frank.li@vivo.com> > --- > fs/buffer [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.181 listed in wl.mailspike.net]
X-Headers-End: 1uXl5v-0001l3-I4
Subject: Re: [Jfs-discussion] [PATCH 2/4] fs/buffer: parse IOCB_DONTCACHE
 flag in block_write_begin()
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVGh1LCAyMDI1LTA2LTI2IGF0IDExOjMwIC0wNjAwLCBZYW5ndGFvIExpIHdyb3RlOgo+IFdo
ZW4gaW9jYiBmbGFncyBwYXNzZXMgSU9DQl9ET05UQ0FDSEUsIHVzZSBGR1BfRE9OVENBQ0hFIG1v
ZGUgdG8gZ2V0Cj4gZm9saW8uCj4gCj4gU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8ZnJhbmsu
bGlAdml2by5jb20+Cj4gLS0tCj4gwqBmcy9idWZmZXIuYyB8IDcgKysrKystLQo+IMKgMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZnMvYnVmZmVyLmMgYi9mcy9idWZmZXIuYwo+IGluZGV4IGYyYjdiMzBhNzZjYS4uMGVkODBi
NjJmZWVhIDEwMDY0NAo+IC0tLSBhL2ZzL2J1ZmZlci5jCj4gKysrIGIvZnMvYnVmZmVyLmMKPiBA
QCAtMjI1MSwxMSArMjI1MSwxNCBAQCBpbnQgYmxvY2tfd3JpdGVfYmVnaW4oc3RydWN0IGtpb2Ni
ICppb2NiLAo+IHN0cnVjdCBhZGRyZXNzX3NwYWNlICptYXBwaW5nLCBsb2ZmX3QKPiDCoAkJdW5z
aWduZWQgbGVuLCBzdHJ1Y3QgZm9saW8gKipmb2xpb3AsIGdldF9ibG9ja190Cj4gKmdldF9ibG9j
aykKPiDCoHsKPiDCoAlwZ29mZl90IGluZGV4ID0gcG9zID4+IFBBR0VfU0hJRlQ7Cj4gKwlmZ2Zf
dCBmZ3AgPSBGR1BfV1JJVEVCRUdJTjsKPiDCoAlzdHJ1Y3QgZm9saW8gKmZvbGlvOwo+IMKgCWlu
dCBzdGF0dXM7Cj4gwqAKPiAtCWZvbGlvID0gX19maWxlbWFwX2dldF9mb2xpbyhtYXBwaW5nLCBp
bmRleCwgRkdQX1dSSVRFQkVHSU4sCj4gLQkJCW1hcHBpbmdfZ2ZwX21hc2sobWFwcGluZykpOwo+
ICsJaWYgKGlvY2ItPmtpX2ZsYWdzICYgSU9DQl9ET05UQ0FDSEUpCj4gKwkJZmdwIHw9IEZHUF9E
T05UQ0FDSEU7Cj4gKwo+ICsJZm9saW8gPSBfX2ZpbGVtYXBfZ2V0X2ZvbGlvKG1hcHBpbmcsIGlu
ZGV4LCBmZ3AsCj4gbWFwcGluZ19nZnBfbWFzayhtYXBwaW5nKSk7Cj4gwqAJaWYgKElTX0VSUihm
b2xpbykpCj4gwqAJCXJldHVybiBQVFJfRVJSKGZvbGlvKTsKPiDCoAoKQ29ycmVjdCBtZSBpZiBJ
IGFtIHdyb25nLiBBcyBmYXIgYXMgSSBjYW4gc2VlLCB0aGUgZmlyc3QgcGF0Y2ggZGVwZW5kcwpm
cm9tICBzZWNvbmQgb25lLiBJdCBtZWFucyB0aGF0IGlmIHNvbWVib2R5IGFwcGxpZXMgdGhlIGZp
cnN0IHBhdGNoCmJ1dCwgc29tZWhvdywgZG9uJ3QgYXBwbHkgdGhlIHNlY29uZCBvbmUsIHRoZW4g
bm9ib2R5IHdpbGwgYmUgYWJsZSB0bwpjb21waWxlIHRoZSBrZXJuZWwgY29kZS4gQW0gSSBjb3Jy
ZWN0PwoKV2h5IGRvIHdlIG5lZWQgdG8gbWFrZSB0aGlzIG1vZGlmaWNhdGlvbiBhbmQsIHRoZW4s
IHRvdWNoIG90aGVyIGZpbGUKc3lzdGVtcz8gV2hhdCB0aGUganVzdGlmaWNhdGlvbiBvZiB0aGlz
PyBXaHkgZG8gd2UgbmVlZCB0byBtYWtlIHRoaXMKbW9kaWZpY2F0aW9uIGF0IHRoZSBmaXJzdCBw
bGFjZT8KClRoYW5rcywKU2xhdmEuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9u
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0
cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
