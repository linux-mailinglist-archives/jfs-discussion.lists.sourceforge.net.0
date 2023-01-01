Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2B765AB1B
	for <lists+jfs-discussion@lfdr.de>; Sun,  1 Jan 2023 20:06:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pC3f9-0002CX-HY;
	Sun, 01 Jan 2023 19:06:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pali@kernel.org>) id 1pC3f5-0002CN-Fw;
 Sun, 01 Jan 2023 19:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oSnIjnCZg7iM1GbWnfUiBsdoMyISJdUdnBEnw4pi05E=; b=Ogqby/gh6KvPldRXmyj5gwEgYN
 Ar64W9z5SFEJXjO1vQ23yMtKVEUNqmRmJ44tg3Ixq2EgOcRle6NXtl7zVqxBB606CsXjg+6ui1YlT
 sf3fyKJHLTeJOiD/8QENXn6R2J/5BFNpU19rgs3U+OiuCEy/IhOwScdUA+3WbKiPpv8Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oSnIjnCZg7iM1GbWnfUiBsdoMyISJdUdnBEnw4pi05E=; b=dYQxKm/O36oFLgeUBDA6gKGqSM
 xDGpdQgz5POgz0CaK4xsuaNDEZcSgTKVCwtqcpmRVntNsquogcmBQwJY1u5P5797Bm3NRNPamoqsA
 A30enqQbamvgXnMy/Tn3qRjd4prYwp+moYxAWWT4iD4fqo/kieQCUcVsDtW5YHr8Rzx8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pC3f4-001XYT-86; Sun, 01 Jan 2023 19:06:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 36812B80B44;
 Sun,  1 Jan 2023 19:06:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0BBCC433EF;
 Sun,  1 Jan 2023 19:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1672599968;
 bh=v/48WLw5b9kHI2kBsC/V9/Y84M/neLQ2uytuy7oB0VI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TAQlHQcAO2ymuKtvY8X2iXDJhTb4aTx6YfvnhiN4t078LjJS2ZMy70d35wI75fOD/
 3N39Oz/uxWUEskqh+cuzeKsIedWy4zDW9Btd6OsQ98jeVgHEM4Jf5rFj2EQDOcHlR7
 130NwIOTnc9dMTuSiuuqv7CxR2bly7G6Bl3w5rgYpqbo84jgs0z7janVUjVFrrFP86
 s9wW+DobPPZ1/GLdUQ7+gCBgBoO6qLHEaezhfTYVn6sJHRZPmolXsq/KGkeq/rr8z5
 Om5U3ZpV0WWV6S8nf0X96KPEMoEHpEn2+i60dvjZ9PKLDds7ZjHkuSwsfOaWhccxu9
 SmcOY0oAdxN8A==
Received: by pali.im (Postfix)
 id DD34C884; Sun,  1 Jan 2023 20:06:05 +0100 (CET)
Date: Sun, 1 Jan 2023 20:06:05 +0100
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Kari Argillander <kari.argillander@gmail.com>
Message-ID: <20230101190605.s7jyf3umgubwrk3i@pali>
References: <20221226142150.13324-1-pali@kernel.org>
 <20221226142150.13324-4-pali@kernel.org>
 <CAC=eVgS7weRq7S16MpTyx9eZm=2s+OZhm6Ko75Z6bmjsHH-7Yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAC=eVgS7weRq7S16MpTyx9eZm=2s+OZhm6Ko75Z6bmjsHH-7Yw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sunday 01 January 2023 21:02:46 Kari Argillander wrote:
    > 26.12.2022 klo 16.22 Pali Rohár (pali@kernel.org) wrote: > > > > Other
    fs drivers are using iocharset= mount option for specifying charset [...]
    
 
 Content analysis details:   (-5.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pC3f4-001XYT-86
Subject: Re: [Jfs-discussion] [RFC PATCH v2 03/18] ntfs: Undeprecate
 iocharset= mount option
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
 Anton Altaparmakov <anton@tuxera.com>, Salah Triki <salah.triki@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 "Theodore Y . Ts'o" <tytso@mit.edu>, Luis de Bethencourt <luisbg@kernel.org>,
 linux-ntfs-dev@lists.sourceforge.net, Paulo Alcantara <pc@cjr.nz>,
 linux-kernel@vger.kernel.org, Ronnie Sahlberg <lsahlber@redhat.com>,
 Steve French <sfrench@samba.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gU3VuZGF5IDAxIEphbnVhcnkgMjAyMyAyMTowMjo0NiBLYXJpIEFyZ2lsbGFuZGVyIHdyb3Rl
Ogo+IDI2LjEyLjIwMjIga2xvIDE2LjIyIFBhbGkgUm9ow6FyIChwYWxpQGtlcm5lbC5vcmcpIHdy
b3RlOgo+ID4KPiA+IE90aGVyIGZzIGRyaXZlcnMgYXJlIHVzaW5nIGlvY2hhcnNldD0gbW91bnQg
b3B0aW9uIGZvciBzcGVjaWZ5aW5nIGNoYXJzZXQuCj4gPiBTbyBtYXJrIGlvY2hhcnNldD0gbW91
bnQgb3B0aW9uIGFzIHByZWZlcnJlZCBhbmQgZGVwcmVjYXRlIG5scz0gbW91bnQKPiA+IG9wdGlv
bi4KPiAKPiBzbmlwLgo+IAo+ID4gZGlmZiAtLWdpdCBhL2ZzL250ZnMvc3VwZXIuYyBiL2ZzL250
ZnMvc3VwZXIuYwo+IAo+IHNuaXAuCj4gCj4gPiBAQCAtMjE4LDEwICsyMTMsMTAgQEAgc3RhdGlj
IGJvb2wgcGFyc2Vfb3B0aW9ucyhudGZzX3ZvbHVtZSAqdm9sLCBjaGFyICpvcHQpCj4gPiAgICAg
ICAgICAgICAgICAgfSBlbHNlIGlmICghc3RyY21wKHAsICJ1dGY4IikpIHsKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGJvb2wgdmFsID0gZmFsc2U7Cj4gPiAgICAgICAgICAgICAgICAgICAg
ICAgICBudGZzX3dhcm5pbmcodm9sLT5zYiwgIk9wdGlvbiB1dGY4IGlzIG5vIGxvbmdlciAiCj4g
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJzdXBwb3J0ZWQsIHVzaW5nIG9w
dGlvbiBubHM9dXRmOC4gUGxlYXNlICIKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgInVzZSBvcHRpb24gbmxzPXV0ZjggaW4gdGhlIGZ1dHVyZSBhbmQgIgo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAibWFrZSBzdXJlIHV0ZjggaXMgY29tcGlsZWQg
ZWl0aGVyIGFzIGEgIgo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAibW9k
dWxlIG9yIGludG8gdGhlIGtlcm5lbC4iKTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgInN1cHBvcnRlZCwgdXNpbmcgb3B0aW9uIGlvY2hhcnNldD11dGY4LiAiCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJQbGVhc2UgdXNlIG9wdGlvbiBpb2No
YXJzZXQ9dXRmOCBpbiB0aGUgIgo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiZnV0dXJlIGFuZCBtYWtlIHN1cmUgdXRmOCBpcyBjb21waWxlZCAiCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJlaXRoZXIgYXMgYSBtb2R1bGUgb3IgaW50byB0aGUg
a2VybmVsLiIpOwo+IAo+IFdlIGRvIG5vdCBoYXZlIHRvIG1ha2Ugc3VyZSB1dGY4IGlzIGNvbXBp
bGVkIGFueW1vcmUgYXMgaXQgImFsd2F5cyBpcyIgcmlnaHQ/CgpZZXMsIHJpZ2h0LCB3ZSBoYXZl
IGFsd2F5cyB1dGY4IHN1cHBvcnQgY29tcGlsZWQtaW4uClNlY29uZCBwYXJ0IG9mIHRoYXQgd2Fy
bmluZyBtZXNzYWdlIHNob3VsZCBiZSBkcm9wcGVkLgoKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICAgIGlmICghdiB8fCAhKnYpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZh
bCA9IHRydWU7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBlbHNlIGlmICghc2ltcGxlX2dl
dGJvb2wodiwgJnZhbCkpCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3Rz
LnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0
aW5mby9qZnMtZGlzY3Vzc2lvbgo=
