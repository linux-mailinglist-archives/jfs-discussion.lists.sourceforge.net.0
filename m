Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6D76765FE
	for <lists+jfs-discussion@lfdr.de>; Sat, 21 Jan 2023 12:27:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pJC1N-0003Cf-4z;
	Sat, 21 Jan 2023 11:26:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <per@computer.org>) id 1pJC1D-0003CU-Ha
 for jfs-discussion@lists.sourceforge.net;
 Sat, 21 Jan 2023 11:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:Message-ID:Date:Subject:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RKDhQyJvHDOt6jZoioOpk5W/H6XzFLywWRc6wcg2OZs=; b=AruAP+zyXRHqXzabb259wfTl+a
 K6BIU6rmrpHShw/sazqvQ4ogS6brbiSx6pi/VtR/GpAdDztU6pZ+8RvWn2zfZHykrwYD8diqqmgb4
 V46RXOWVgdrFEswLw7P+yHHrSVXZTuKMDGY286wQVj8M97AFe3SIYHqDuOtXZQxu7gHM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 Message-ID:Date:Subject:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RKDhQyJvHDOt6jZoioOpk5W/H6XzFLywWRc6wcg2OZs=; b=ZXP+DRhge876sTqycM1gz5lHbr
 xt8XuWf3L/r0HMs+xXj35tyKSr2ACfVXpOQ/VPaU2SGoK/F0Ul4B7SeNsfIDNvaKkwYyZ+iRK9br5
 /ptsAk8ytcvyOH8Mz5bav+El5gTjugtw4X2EfG2ll+2b1ofxFpCytE+5As3Zj1fE3VaA=;
Received: from news.enidan.com ([185.85.248.29])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.95)
 id 1pJC18-00BN1q-J3 for jfs-discussion@lists.sourceforge.net;
 Sat, 21 Jan 2023 11:26:41 +0000
Received: by news.enidan.com (Postfix, from userid 65534)
 id 075881E476; Sat, 21 Jan 2023 12:09:23 +0100 (CET)
X-Original-To: mail2news
Delivered-To: mail2news@news.enidan.com
Received: by news.enidan.com (Postfix, from userid 9)
 id CFDDB1E3F9; Sat, 21 Jan 2023 12:09:23 +0100 (CET)
From: Per Jessen <per@computer.org>
X-Newsgroups: list.linux.jfs
Date: Sat, 21 Jan 2023 12:09:23 +0100
Organization: News-server @ ENIDAN Technologies GmbH
Lines: 32
Message-ID: <tqgh53$u2$3@saturn.local.net>
References: <393B8E4A-8C9A-4941-9AFF-FAC9C0D0B2DA@dilger.ca>
 <20230119080532.crn7wzo4jz5x5ng3@tibus.st>
Mime-Version: 1.0
X-Trace: saturn.local.net 1674299363 962 192.168.2.114 (21 Jan 2023 11:09:23
 GMT)
X-Complaints-To: newsmaster
User-Agent: KNode/0.10.4
To: jfs-discussion@lists.sourceforge.net
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Stefan Tibus wrote: > While I am mostly an ordinary user
 running
 Linux on my own machines at > home, I must say that I have been a happy user
 of JFS from quite early > on on all my Linux installations, 
 Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.85.248.29 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
X-Headers-End: 1pJC18-00BN1q-J3
Subject: Re: [Jfs-discussion] Should we orphan JFS?
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

U3RlZmFuIFRpYnVzIHdyb3RlOgoKPiBXaGlsZSBJIGFtIG1vc3RseSBhbiBvcmRpbmFyeSB1c2Vy
IHJ1bm5pbmcgTGludXggb24gbXkgb3duIG1hY2hpbmVzIGF0Cj4gaG9tZSwgSSBtdXN0IHNheSB0
aGF0IEkgaGF2ZSBiZWVuIGEgaGFwcHkgdXNlciBvZiBKRlMgZnJvbSBxdWl0ZSBlYXJseQo+IG9u
IG9uIGFsbCBteSBMaW51eCBpbnN0YWxsYXRpb25zLCAKClNhbWUgaGVyZS4gIEFsc28gZm9yIE15
dGhUViA6LSkgIAoKPiBGcm9tIG15IHBlcnNwZWN0aXZlIGl0IHdvdWxkIGJlIHNhZCBzZWVpbmcg
aXQgcmVtb3ZlZCB3aGlsZSBvdGhlciBtdWNoCj4gb2xkZXIgZmlsZXN5c3RlbXMgKG9yIG90aGVy
IGZlYXR1cmVzKSBhcmUgcmV0YWluZWQuIEJ1dCBJIGFsc28ga25vdwo+IHRoYXQgaW4gdGhlIGVu
ZCBpdCBkZXBlbmRzIG9uIHRoZSBjYXBhYmlsaXR5LCBhdmFpbGFiaWxpdHkgYW5kCj4gd2lsbGlu
Z25lc3Mgb2YgZGV2ZWxvcGVycyB0byBtYWludGFpbiBpdC4gCgorMQoKPiBTbyB0aGlzIGlzIG15
IHZvdGUgYWdhaW5zdCBvcnBoYW5pbmcgSkZTLiBJIHN0aWxsIHRoaW5rIGl0IGlzIGEgZ29vZAo+
IGZpbGVzeXN0ZW0gYW5kIGNlcnRhaW5seSB1c2VmdWwgb24gc3lzdGVtcyB3aXRoIGxlc3MgcmVz
b3VyY2VzIHdoZXJlCj4gb25lIHdvdWxkIHByb2JhYmx5IG5vdCB1c2UgQlRSRlMsIFpGUyBvciBz
by4gQnV0IHdoYXRldmVyIHRoZSBmaW5hbAo+IGRlY2lzaW9uIHdpbGwgYmUsIEkgd291bGQgbGlr
ZSB0byB0aGFuayB5b3UgYWxsIGZvciBjb250cmlidXRpbmcgdG8KPiBKRlMgYW5kIGtlZXBpbmcg
aXQgcnVubmluZyBvdmVyIHRoZSBwYXN0ID4yMCB5ZWFycy4KCisxCgoKLS0gClBlciBKZXNzZW4s
IFrDvHJpY2ggKC0wLjnCsEMpCk1lbWJlciwgb3BlblNVU0UgSGVyb2VzICgyMDE2IC0gcHJlc2Vu
dCkKV2UncmUgaGlyaW5nIC0gaHR0cHM6Ly9lbi5vcGVuc3VzZS5vcmcvb3BlblNVU0U6SGVyb2Vz
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1k
aXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1
c3Npb24K
