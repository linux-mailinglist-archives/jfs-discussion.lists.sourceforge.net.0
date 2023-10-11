Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3B7C53F8
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 14:28:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqYJR-0000Tf-6a;
	Wed, 11 Oct 2023 12:27:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1qqYJQ-0000TZ-3E
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:27:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XLGYNIpBGTpFoman1F31pR+A7u+/GIIcO6T6txA/HVQ=; b=AjyRTdkMwv/8S0bqkWoQSLmDWx
 uv87DHpwAvPcpDaRusZtx4SsUiLb6vrnsKQ4Of4TE+ysIeXfqHZz4xEH4F6GaBswpY3HO5rDEJO5+
 fCHHXLh98+7+fz5ORFm8Iwthw7KYSOv6DlytIzbRbcuCGXAKP0ABjOPFkeXMYOMHDihw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XLGYNIpBGTpFoman1F31pR+A7u+/GIIcO6T6txA/HVQ=; b=Kolluj/NOQ/vJ/PRAk38RQGuPc
 i87BUPqAHUx+dUhUtsMRWg/zjSPgt7s4GI3z1zj2aZUEZ8AghpI8YWjP8Ud2/zl8sWiAQ7SWLQdXT
 +d4UbPUds7WYWZN6s0VXKU5wrglbVRQMcDhT4kQFuzFLH2NJGFmCpDey0YwSO+0zUUIc=;
Received: from smtp-out2.suse.de ([195.135.220.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqYJO-00BnMt-86 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:27:40 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 04C211FEAA;
 Wed, 11 Oct 2023 12:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1697027252; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XLGYNIpBGTpFoman1F31pR+A7u+/GIIcO6T6txA/HVQ=;
 b=d1ouo4yssFmMN4hXj7YbQ1/bxrm535wo+ovssb3YHlZbR9cXMgnQOp+JhjK+IePE4+qlqj
 8zBlPV09rDCPNnimAInT+7TBIrkCZLcKlaQ7NnFWt7HNxWPySd9+tivCWbsAG0HQOcTHKq
 KiZqbYGPvk/dt/LL76CA3TPCmXGVm00=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1697027252;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XLGYNIpBGTpFoman1F31pR+A7u+/GIIcO6T6txA/HVQ=;
 b=KNdLDwJcimYu5q45lemc7ttQM9SKBG6AuDTAgenwRrOrrOKp8yr3lxkef5StxJdndiKa6b
 oQ5saYsh2tXbveAw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E6128138EF;
 Wed, 11 Oct 2023 12:27:31 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id JxQdOLOUJmWvKQAAMHmgww
 (envelope-from <jack@suse.cz>); Wed, 11 Oct 2023 12:27:31 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 5C882A05BC; Wed, 11 Oct 2023 14:27:31 +0200 (CEST)
Date: Wed, 11 Oct 2023 14:27:31 +0200
From: Jan Kara <jack@suse.cz>
To: Max Kellermann <max.kellermann@ionos.com>
Message-ID: <20231011122731.qhxvdvzfub53t5v2@quack3>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed 11-10-23 14:18:45, Max Kellermann wrote: > On Wed,
   Oct 11, 2023 at 2:07 PM Jan Kara <jack@suse.cz> wrote: > > Indeed, *that*
    looks like a bug. Good spotting! I'd say posix_acl_create() > > de [...] 
 
 Content analysis details:   (-2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [195.135.220.29 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqYJO-00BnMt-86
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

T24gV2VkIDExLTEwLTIzIDE0OjE4OjQ1LCBNYXggS2VsbGVybWFubiB3cm90ZToKPiBPbiBXZWQs
IE9jdCAxMSwgMjAyMyBhdCAyOjA34oCvUE0gSmFuIEthcmEgPGphY2tAc3VzZS5jej4gd3JvdGU6
Cj4gPiBJbmRlZWQsICp0aGF0KiBsb29rcyBsaWtlIGEgYnVnLiBHb29kIHNwb3R0aW5nISBJJ2Qg
c2F5IHBvc2l4X2FjbF9jcmVhdGUoKQo+ID4gZGVmaW5lZCBpbiBpbmNsdWRlL2xpbnV4L3Bvc2l4
X2FjbC5oIGZvciB0aGUgIUNPTkZJR19GU19QT1NJWF9BQ0wgY2FzZQo+ID4gc2hvdWxkIGJlIHN0
cmlwcGluZyBtb2RlIHVzaW5nIHVtYXNrLiBDYXJlIHRvIHNlbmQgYSBwYXRjaCBmb3IgdGhpcz8K
PiAKPiBZb3UgbWVhbiBsaWtlIHRoZSBwYXRjaCB5b3UncmUgY29tbWVudGluZyBvbiByaWdodCBu
b3c/IDstKQoKWWVhaCwgT0ssIHRoYXQgd2FzIGEgYml0IHNpbGx5IDspIEkgd2FzIHRvbyBjb25j
ZW50cmF0ZWQgb24gdGhlIGZpbGVzeXN0ZW0KYml0cy4KCj4gQnV0IHdpdGhvdXQgdGhlIG90aGVy
IGZpbGVzeXN0ZW1zLiBJJ2xsIHJlc2VuZCBpdCB3aXRoIGp1c3QgdGhlCj4gcG9zaXhfYWNsLmgg
aHVuay4KCll1cCwgYW5kIGEgYml0IG1hc3NhZ2VkIGNoYW5nZWxvZy4uLiBUaGFua3MgYSBsb3Qh
CgoJCQkJCQkJCUhvbnphCi0tIApKYW4gS2FyYSA8amFja0BzdXNlLmNvbT4KU1VTRSBMYWJzLCBD
UgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
