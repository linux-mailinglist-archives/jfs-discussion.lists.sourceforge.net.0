Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 528457C52E5
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 14:07:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqXzi-00050f-Tq;
	Wed, 11 Oct 2023 12:07:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqXzg-00050W-BH
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ULWC15oexVFAzs0lRcAcAF0IvOr+w9GqABbuWoIc/Yg=; b=DrMxSNnX1Isr9Df5OJc7p/WJKY
 WFs9qA8ZXXzHNDuf+BaFIU6dzwNlhmzFslCF2bhZcnU3XTFU0EjlILUUO0mtwM/ZpYP+7yx7mUpth
 OG4vKJhRbHgkxIh9K91/poCok5VJ08rukO2XPgzaPCyFHqrDLrNBgnCDpKZ7th34wrhQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ULWC15oexVFAzs0lRcAcAF0IvOr+w9GqABbuWoIc/Yg=; b=GJHkIRBrJaW8v1bIQ4nKqx2Lds
 8/wIpcNcBYFa3+jsIwShvh2qkYA+Lh7V54ea1VU/57cD6UvOm5svKGc9/2WPluudDBahCP2xZyZis
 I4xetC/H9r+nX+8VnaX5cKov/aColG3UEFTy/SWNhxMCkmoCZchGEP4vm3neERX5hH8k=;
Received: from smtp-out1.suse.de ([195.135.220.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqXzf-0006rs-6c for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:07:16 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 188F321860;
 Wed, 11 Oct 2023 12:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697026017; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ULWC15oexVFAzs0lRcAcAF0IvOr+w9GqABbuWoIc/Yg=;
 b=P93Y+I3jvub3oHkwH/c1R/KMW/S6/KfvMrZH3pAYZCdKewGtpg9u/a80DI7uZrktX4dHNl
 Y7Vp057m/REZQdTl//uTh+JQg5DqrB4d3JvxuITbMRN+hytAzWUo2oYn8dNfqwIV6AvJ5V
 ov63y0wUM+M2GLeYr5DVRNsdL4HnE+M=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697026017;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ULWC15oexVFAzs0lRcAcAF0IvOr+w9GqABbuWoIc/Yg=;
 b=FLds2aSoOcZyIorbLDPOi9qbQP5BlAZxrWVsuKFI0gLaV5yAB64MylJ7VZgv4eEFqjrAoQ
 4MkrzgM8XU07vsDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D9BBB134F5;
 Wed, 11 Oct 2023 12:06:56 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id rW9JNOCPJmUgHgAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 12:06:56 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 06012A05BC; Wed, 11 Oct 2023 14:06:56 +0200 (CEST)
Date: Wed, 11 Oct 2023 14:06:55 +0200
From: Jan Kara <jack@suse.cz>
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231011120655.ndb7bfasptjym3wl@quack3>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
Authentication-Results: smtp-out1.suse.de;
	none
X-Spam-Level: 
X-Spam-Score: 0.40
X-Spamd-Result: default: False [0.40 / 50.00]; ARC_NA(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 MIME_GOOD(-0.10)[text/plain];
 CLAM_VIRUS_FAIL(0.00)[failed to scan and retransmits exceed];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCPT_COUNT_TWELVE(0.00)[14]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_NOT_FQDN(0.50)[];
 RCVD_COUNT_TWO(0.00)[2]; RCVD_TLS_ALL(0.00)[];
 FREEMAIL_CC(0.00)[suse.cz, redhat.com, gmail.com, kernel.org, suse.com,
 vger.kernel.org, lists.sourceforge.net, fujitsu.com]
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed 11-10-23 12:51:12, Max Kellermann wrote: > On Wed,
   Oct 11, 2023 at 12:05 PM Jan Kara <jack@suse.cz> wrote: > > So I've checked
    some more and the kernel doc comments before > > mode_strip_umas [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.28 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqXzf-0006rs-6c
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
 linux-ext4@vger.kernel.org, Jan Kara <jack@suse.cz>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkIDExLTEwLTIzIDEyOjUxOjEyLCBNYXggS2VsbGVybWFubiB3cm90ZToKPiBPbiBXZWQs
IE9jdCAxMSwgMjAyMyBhdCAxMjowNeKAr1BNIEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+IHdyb3Rl
Ogo+ID4gU28gSSd2ZSBjaGVja2VkIHNvbWUgbW9yZSBhbmQgdGhlIGtlcm5lbCBkb2MgY29tbWVu
dHMgYmVmb3JlCj4gPiBtb2RlX3N0cmlwX3VtYXNrKCkgYW5kIHZmc19wcmVwYXJlX21vZGUoKSBt
YWtlIGl0IHByZXR0eSBvYnZpb3VzIC0gYWxsCj4gPiBwYXRocyBjcmVhdGluZyBuZXcgaW5vZGVz
IG11c3QgYmUgY2FsbGluZyB2ZnNfcHJlcGFyZV9tb2RlKCkuIEFzIGEgcmVzdWx0Cj4gPiBtb2Rl
X3N0cmlwX3VtYXNrKCkgd2hpY2ggaGFuZGxlcyB1bWFzayBzdHJpcHBpbmcgZm9yIGZpbGVzeXN0
ZW1zIG5vdAo+ID4gc3VwcG9ydGluZyBwb3NpeCBBQ0xzLiBGb3IgZmlsZXN5c3RlbXMgdGhhdCBk
byBzdXBwb3J0IEFDTHMsCj4gPiBwb3NpeF9hY2xfY3JlYXRlKCkgbXVzdCBiZSBjYWxsIGFuZCB0
aGF0IGhhbmRsZXMgdW1hc2sgc3RyaXBwaW5nLiBTbyB5b3VyCj4gPiBmaXggc2hvdWxkIG5vdCBi
ZSBuZWVkZWQuIENDZWQgc29tZSByZWxldmFudCBwZW9wbGUgZm9yIGNvbmZpcm1hdGlvbi4KPiAK
PiBUaGFua3MsIEphbi4gRG8geW91IHRoaW5rIHRoZSBkb2N1bWVudGF0aW9uIGlzIG9idmlvdXMg
ZW5vdWdoLCBvcgo+IHNoYWxsIEkgbG9vayBhcm91bmQgYW5kIHRyeSB0byBpbXByb3ZlIHRoZSBk
b2N1bWVudGF0aW9uPyBJJ20gbm90IGEgRlMKPiBleHBlcnQsIHNvIGl0IG1heSBiZSBqdXN0IG15
IGZhdWx0IHRoYXQgaXQgY29uZnVzZWQgbWUuLi4uIEkganVzdAo+IGFuYWx5emVkIHRoZSBPX1RN
UEZJTEUgdnVsbmVyYWJpbGl0eSBmb3VyIHllYXJzIGFnbyAoYmVjYXVzZSBpdCB3YXMKPiByZXBv
cnRlZCB0byBtZSBhcyB0aGUgbWFpbnRhaW5lciBvZiBhIHVzZXJzcGFjZSBzb2Z0d2FyZSkuCj4g
Cj4gQXBhcnQgZnJvbSBteSBkb3VidHMgdGhhdCB0aGlzIEFQSSBjb250cmFjdCBpcyB0b28gZXJy
b3IgcHJvbmUsIEknbQo+IG5vdCBxdWl0ZSBzdXJlIGlmIGFsbCBmaWxlc3lzdGVtcyByZWFsbHkg
aW1wbGVtZW50IGl0IHByb3Blcmx5Lgo+IAo+IEZvciBleGFtcGxlLCBvdmVybGF5ZnMgdW5jb25k
aXRpb25hbGx5IHNldHMgU0JfUE9TSVhBQ0wsIGV2ZW4gaWYgdGhlCj4ga2VybmVsIGhhcyBubyBB
Q0wgc3VwcG9ydC4gV291bGQgdGhpcyBpZ25vcmUgdGhlIHVtYXNrPyBJJ20gbm90IHN1cmUsCj4g
b3ZlcmxheWZzIGlzIGEgc3BlY2lhbCBiZWFzdC4KPiBUaGVuIHRoZXJlJ3Mgb3JhbmdlZnMgd2hp
Y2ggYWxsb3dzIHNldHRpbmcgdGhlICJhY2wiIG1vdW50IG9wdGlvbiAoYW5kCj4gdGh1cyBTQl9Q
T1NJWEFDTCkgZXZlbiBpZiB0aGUga2VybmVsIGhhcyBubyBBQ0wgc3VwcG9ydC4gU2FtZSBmb3Ig
Z2ZzMgo+IGFuZCBtYXliZSBjaWZzLCBtYXliZSBtb3JlLCBJIGRpZG4ndCBjaGVjayB0aGVtIGFs
bC4KCkluZGVlZCwgKnRoYXQqIGxvb2tzIGxpa2UgYSBidWcuIEdvb2Qgc3BvdHRpbmchIEknZCBz
YXkgcG9zaXhfYWNsX2NyZWF0ZSgpCmRlZmluZWQgaW4gaW5jbHVkZS9saW51eC9wb3NpeF9hY2wu
aCBmb3IgdGhlICFDT05GSUdfRlNfUE9TSVhfQUNMIGNhc2UKc2hvdWxkIGJlIHN0cmlwcGluZyBt
b2RlIHVzaW5nIHVtYXNrLiBDYXJlIHRvIHNlbmQgYSBwYXRjaCBmb3IgdGhpcz8KCj4gVGhlICJt
YWluc3RyZWFtIiBmaWxlc3lzdGVtcyBsaWtlIGV4dDQgc2VlbSB0byBiZSBpbXBsZW1lbnRlZAo+
IHByb3Blcmx5LCB0aG91Z2ggdGhpcyBpcyBzdGlsbCB0b28gZnJhZ2lsZSBmb3IgbXkgdGFzdGUu
Li4gZXh0NCBoYXMKPiB0aGUgU0JfUE9TSVhBQ0wgY29kZSBldmVuIGlmIHRoZXJlJ3Mgbm8ga2Vy
bmVsIEFDTCBzdXBwb3J0LCBidXQgaXQgaXMKPiBub3QgcmVhY2hhYmxlIGJlY2F1c2UgRVhUNF9N
T1VOVF9QT1NJWF9BQ0wgY2Fubm90IGJlIHNldCBmcm9tCj4gdXNlcnNwYWNlIGluIHRoYXQgY2Fz
ZS4gVGhlIGNvZGUgbG9va3Mgc3VzcGljaW91cywgYnV0IGlzIG9rYXkgaW4gdGhlCj4gZW5kIC0g
c3RpbGwgbm90IG15IHRhc3RlLgo+IAo+IEkgc2VlIHNvIG11Y2ggcmVkdW5kYW50IGNvZGUgcmVn
YXJkaW5nIHRoZSAiYWNsIiBtb3VudCBvcHRpb24gaW4gYWxsCj4gZmlsZXN5c3RlbXMuIEkgYmVs
aWV2ZSB0aGUgQVBJIHNob3VsZCBiZSBkZXNpZ25lZCBpbiBhIHdheSB0aGF0IGl0IGlzCj4gc2Fm
ZS1ieS1kZWZhdWx0LCBhbmQgc2hvdWxkbid0IG5lZWQgdmVyeSBjYXJlZnVsIGNvbnNpZGVyYXRp
b25zIGluCj4gZWFjaCBhbmQgZXZlcnkgZmlsZXN5c3RlbSwgb3IgZWxzZSBhbGwgZmlsZXN5c3Rl
bXMgcmVwZWF0IHRoZSBzYW1lCj4gbWlzdGFrZXMgdW50aWwgdGhlIGxhc3Qgb25lIGdldHMgZml4
ZWQuCgpTbyBJIGRlZmluaXRlbHkgYWdyZWUgdGhhdCB3ZSBzaG91bGQgaGFuZGxlIGFzIG1hbnkg
dGhpbmdzIGFzIHBvc3NpYmxlIGluClZGUyB3aXRob3V0IHJlbHlpbmcgb24gZmlsZXN5c3RlbXMg
dG8gZ2V0IGl0IHJpZ2h0LiBUaHVzIEkgYWdyZWUgVkZTIHNob3VsZApkbyB0aGUgcmlnaHQgdGhp
bmcgZXZlbiBpZiB0aGUgZmlsZXN5c3RlbSBzZXRzIFNCX1BPU0lYQUNsIHdoZW4KIUNPTkZJR19G
U19QT1NJWF9BQ0wuCgoJCQkJCQkJCUhvbnphCi0tIApKYW4gS2FyYSA8amFja0BzdXNlLmNvbT4K
U1VTRSBMYWJzLCBDUgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5z
b3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGlu
Zm8vamZzLWRpc2N1c3Npb24K
